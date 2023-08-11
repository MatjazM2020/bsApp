import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor implements RequestInterceptor {
  final String token;
  AuthInterceptor(this.token);

  @override
  Future<Request> onRequest(Request request) async {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? '';
    String expires = prefs.getString('expires') ?? '';
    if (token.isNotEmpty){
      DateTime expirationTime = DateTime.parse(expires);
      DateTime currentTime = DateTime.now();
      if (!expirationTime.isAfter(currentTime)){
        AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: id, deviceId: deviceId);
        final api = GetIt.instance<DobavnicaApi>(); 
        final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);
        
        DateTime? expires = response2.body!.expires;
        String? token = response2.body!.token;
        prefs.setString('expires', expires.toString()); 
        prefs.setString('token', token.toString());
      }
      applyHeader(request, 'Authorization', 'Bearer $token');
    }
    return request;
  }
}


//interceptor zadeva samo autorizacije, tj. tokena. 
//ce mamo id in deviceId shandlamo autorizacijo tuki notr 
//ce nimamo id in deviceIdja, to nrdimo ze prej. 

//ce je id in deviceId prazen, ne stimammo tokenou (to je pr anonymous callih)