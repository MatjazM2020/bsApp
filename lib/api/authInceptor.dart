import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor implements RequestInterceptor {
  @override
  Future<Request> onRequest(Request request) async{
   
    if(request.uri == Uri.parse('/api/anonymous/FLBDev/pub/FLB/DocumentSigningDevice/AuthorizeDevice')){
     return request.copyWith(baseUri: Uri.parse(Constants.baseUrl));
    }else if(request.uri == Uri.parse('/api/anonymous/FLBDev/pub/FLB/DocumentSigningDevice/CreateNewHandler')){
      return request.copyWith(baseUri: Uri.parse(Constants.baseUrl)); 
    }

    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? '';
    String expires = prefs.getString('expires') ?? '';
    

    if (token.isNotEmpty){
      DateTime expirationTime = DateTime.parse(expires);
      DateTime currentTime = DateTime.now();
      if (!expirationTime.isAfter(currentTime)){
        AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: prefs.getString('id')!, deviceId: prefs.getString('deviceId')!);
        final api = GetIt.instance<DobavnicaApi>(); 
        final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);
        DateTime? expires = response2.body!.expires;
        String? token = response2.body!.token;
        prefs.setString('expires', expires.toString()); 
        prefs.setString('token', token.toString());
      }
    final headers = Map<String, String>.from(request.headers);
    headers['Authorization'] = 'Bearer $token';
    return request.copyWith(baseUri: Uri.parse(Constants.baseUrl),headers: headers);
    }else{
        AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: prefs.getString('id')!, deviceId: prefs.getString('deviceId')!);
        final api = GetIt.instance<DobavnicaApi>(); 
        final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);
        DateTime? expires = response2.body!.expires;
        String? token = response2.body!.token;
        prefs.setString('expires', expires.toString()); 
        prefs.setString('token', token.toString());
        final headers = Map<String, String>.from(request.headers);
        headers['Authorization'] = 'Bearer $token';
        return request.copyWith(baseUri: Uri.parse(Constants.baseUrl),headers: headers);
    }
  }
}
