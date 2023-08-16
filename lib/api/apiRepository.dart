import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart'; 
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart'; 



class ApiCalls{
   final dobavnicaApi = GetIt.instance<DobavnicaApi>(); 
    void showPopupError(BuildContext context, String errorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text('Error'),
              content: Text(errorMessage),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('ok'),
                ),
              ]);
        });
  } 
  void performApiCalls(CreateTransportHandlerModel x, context) async{

    final response1 = await dobavnicaApi.apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost(tenant: Constants.tenant, company: Constants.company, body: x);
      
      print('this is the first response.........:' + response1.toString()); 
      if (response1.isSuccessful){
        if (response1.body == null){
          showPopupError(context, 'Please enter a valid VAT number');
        } else {
          String id = response1.body!.id!;
          String deviceId = response1.body!.deviceId!;
          final prefs = await SharedPreferences.getInstance(); 
          prefs.setString('id', id); 
          prefs.setString('deviceId', deviceId); 


          final response2 = await dobavnicaApi.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
          print('this is the second response.................:'+ response2.body.toString());

          if (response2.isSuccessful) {
            if (response2.body != null){
              router.go(Constants.documentPath, extra: response2.body);
             }
           }else{
            showPopupError(context, 'An error occured on the server side');
          }
        }
      }
    }
 }

 