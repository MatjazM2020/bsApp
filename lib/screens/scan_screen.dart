import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:dobavnice_app/screens/document_list.dart';
import 'package:jwt_decoder/jwt_decoder.dart';



class ScanScreen extends StatefulWidget{
  const ScanScreen({super.key});
  @override
  State<StatefulWidget> createState() => _ScanPageState();
}




class _ScanPageState extends State<ScanScreen>{
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),
                  child: const Text('ok'),
                ),
              ]
           );
        }
     );
  }


 @override
 Widget build(BuildContext context){
  final docls = context.watch<DocumentListCubit>();
  
  return Scaffold(appBar: AppBar(title: const Text('Scan')),
  body: 
  // To je samo za testirat flow, pol bo to umesceno v MobileScanner
   MobileScanner(onDetect: (capture){
        try{
          final barCode = capture.barcodes[0];
          print(barCode); 
          print(barCode.toString()); 
          final api = GetIt.instance<DobavnicaApi>(); 
          Map<String, dynamic> decodedToken = JwtDecoder.decode(barCode.toString());         
          final resp = api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barCode.toString()));
          // If dobavnica is already registered in (some packet was already added in the database) then :  
         // router.go(Constants.documentDetailViewPath);

          //-> if dobavnica doesnt yet exist ----- redirrect v screen kjer je info od paketa(dobavnice)
          router.go(Constants.packetDetailViewPath);
          
          //tle spisem logiko, ki jo zatem spravim v cubit posebi... 
          //torej rabmo router d gremo v bodisi prvi zaslon bodisi drugi 

        }catch(e){
          showPopupError(context, 'An unexpected error occured'); 
        }
        } 
      )
    );
  }
}

/*
  TextButton(child: Text('eyo'),onPressed: ()async{
          final api = GetIt.instance<DobavnicaApi>();          
          String barCode = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3N1ZXIiOiI2NGM4ZWI5MzU5N2UyYmRmZGY1Y2Y3Y2MiLCJpZCI6IjY0ZjA1MmFmMDU2YmFhNGFhN2ZkOWRiOSIsIm5iZiI6MTY5MzQ3MTQwNywiZXhwIjoxNzI1MDkzODA3LCJpYXQiOjE2OTM0NzE0MDd9.7ff2QnRqNj0pheaggg1jteq-_uuXLI9TNam3M4xJnPQ";
          Map<String, dynamic> decodedToken = JwtDecoder.decode(barCode);
          //decode jwt to get info! Info which particular packet to access
          
          final resp = await api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barCode /*barcode.rawValue*/));   
          if(docls.state.contains(resp.body![0])){
            router.go(Constants.packetDetailViewPath);
          }else{
            router.go(Constants.documentDetailViewPath);
          }
  }, )
*/
