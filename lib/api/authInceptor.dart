import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor implements RequestInterceptor {

    Future<void> createTokenAndSave(SharedPreferences prefs) async {
        final api = GetIt.instance<DobavnicaApi>();
        AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: prefs.getString('id')!, deviceId: prefs.getString('deviceId')!);
        final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);
        DateTime? expires = response2.body!.expires;
        String? token = response2.body!.token;
        prefs.setString('expires', expires.toString());
        prefs.setString('token', token.toString()); 
    }


  @override
  Future<Request> onRequest(Request request) async {
    if (request.uri == Uri.parse(Constants.authorizeDeviceUri)) {
      return request.copyWith(baseUri: Uri.parse(Constants.baseUrl));
    }else if(request.uri == Uri.parse(Constants.createNewHandlerUri)){
      return request.copyWith(baseUri: Uri.parse(Constants.baseUrl));
    }

    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? '';
    String expires = prefs.getString('expires') ?? '';
    if (token.isNotEmpty) {
      DateTime expirationTime = DateTime.parse(expires);
      DateTime currentTime = DateTime.now();
      if (!expirationTime.isAfter(currentTime)) {
        await createTokenAndSave(prefs);
      }
    } else {
      await createTokenAndSave(prefs); 
    }
    String token2 = prefs.getString('token') ?? '';
    final headers =  Map<String, String>.from(request.headers);
    headers['Authorization'] = 'Bearer $token2';
    return request.copyWith(baseUri: Uri.parse(Constants.baseUrl), headers: headers);
  }
}




