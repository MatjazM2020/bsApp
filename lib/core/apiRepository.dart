import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart'; 
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart'; 

/* INFO: 
  In this file, we handle passing of registration data to the server, and registering the new user. 
  Besides that, we use sharedPreferences, to save the id and deviceId of the user to the device which we are using. (sharedPreferences data is stored locally on the machine)

  disclaimer: This code could be rather used in a cubit, but it works in this way also. 
*/

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
              ]
           );
        }
     );
  } 


  Future<void> createNewHandlerPost(CreateTransportHandlerModel x, context) async{
    final response1 = await dobavnicaApi.apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost(tenant: Constants.tenant, company: Constants.company, body: x);
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
          if (response2.isSuccessful) {
              router.go(Constants.homeDocumentPath, extra: response2.body);                    
        }
      }
    }
  }
}