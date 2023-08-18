import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor implements RequestInterceptor {

    Future<void> createTokenAndSave(SharedPreferences prefs) async {
        final api = GetIt.instance<DobavnicaApi>();
        try{
          AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: prefs.getString('id')!, deviceId: prefs.getString('deviceId')!);
        
        final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);
        if(response2.isSuccessful){
        DateTime? expires = response2.body!.expires;
        String? token = response2.body!.token;
        prefs.setString('expires', expires.toString());
        prefs.setString('token', token.toString()); 
        }else{
          throw Exception('API failed with: ${response2.statusCode}');
        }
        }catch(e){
          throw Exception('Failed to create token and save: $e'); 
        }
    }


  @override
  Future<Request> onRequest(Request request) async {
    if (request.uri == Uri.parse(Constants.authorizeDeviceUri)) {
      return request.copyWith(baseUri: Uri.parse(Constants.baseUrl));
    } else if (request.uri == Uri.parse(Constants.createNewHandlerUri)) {
      return request.copyWith(baseUri: Uri.parse(Constants.baseUrl));
    }


    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? '';
    String expires = prefs.getString('expires') ?? '';

    if (token.isNotEmpty) {
      DateTime expirationTime = DateTime.parse(expires);
      DateTime currentTime = DateTime.now();
      if (!expirationTime.isAfter(currentTime)) {
        createTokenAndSave(prefs);
      }
    } else {
      createTokenAndSave(prefs); 
    }

    final headers = Map<String, String>.from(request.headers);
    headers['Authorization'] = 'Bearer $token';
    return request.copyWith(baseUri: Uri.parse(Constants.baseUrl), headers: headers);
  }
}




