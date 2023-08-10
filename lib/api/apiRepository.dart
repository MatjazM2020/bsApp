import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:dobavnice_app/screens/register.dart';
import 'package:flutter/material.dart'; 
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:shared_preferences/shared_preferences.dart'; 

 class ApiCalls{
    void showPopupError(BuildContext context, String errorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Error'),
              content: Text(errorMessage),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('ok'),
                ),
              ]);
        });
  }

  void performApiCalls(CreateTransportHandlerModel x, context) async{
     final response1 = await dobavnicaApi
        .apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost(
            tenant: 'FLBDev', company: 'FLB', body: x);
    
    try {
      if (response1.isSuccessful) {
        if (response1.body == null) {
          showPopupError(context, 'Please enter a valid VAT number');
        } else {
          //response1 is valid, and we can proceed to the second API call.
          /****************************************************************** */
          String id = response1.body!.id!;
          String deviceId = response1.body!.deviceId!;

          final prefs = await SharedPreferences.getInstance(); 
          prefs.setString('id', id); 
          prefs.setString('deviceId', deviceId); 
          
          
          AuthorizeTransportHandlerRequest y =
              AuthorizeTransportHandlerRequest(id: id, deviceId: deviceId);
          final response2 = await dobavnicaApi
              .apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(
                  tenant: 'FLBDev', company: 'FLB', body: y);

          String token = response2.body!.token!;
          DateTime expires = response2.body!.expires!;

          if (expires.isBefore(currentTime)) {
            showPopupError(context, 'There was an error, please try again');
          } else {
            //The response and time are both valid, we can proceed to the last API call (to retrieve the Document List)
            /**************************************************************** */
            final dobavnicaApiAuthorized = DobavnicaApi.create(
              baseUrl: Uri.parse('https://devapp.flowbase.com'),
              interceptors: [AuthInterceptor(token)],
            );
            final response3 = await dobavnicaApiAuthorized
                .apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(
                    tenant: 'FLBDev', company: 'FLB', body: ListDocuments());
            if (response3.isSuccessful) {
              if (response3.body != null){
                router.go('/document', extra: response3.body );
              }
            } else {
              showPopupError(context, 'An error occured on the server side');
            }
          }
          //*********************************************************** */
        }
      } else {
        showPopupError(context, 'An error occured on the server side');
      }
    } catch (e) {
      showPopupError(context, '$e');
    }
  }

 }