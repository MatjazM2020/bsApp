import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';




class ScanScreen extends StatefulWidget{
  const ScanScreen({super.key});
  @override
  State<StatefulWidget> createState() => _ScanPageState();
}



class _ScanPageState extends State<ScanScreen>{
 @override
 Widget build(BuildContext context){
  return Scaffold(appBar: AppBar(title: const Text('Scan')),
  body: MobileScanner(onDetect: (capture){
        try{
          final barcode = capture.barcodes[0];
          final api = GetIt.instance<DobavnicaApi>();          
          final resp = api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barcode.rawValue)); 
          /*
            -> if dobavnica exists in database ---- redirrect v screen 3/13
            -> if dobavnica doesnt yet exist ----- redirrect v screen kjer je info od paketa(dobavnice)
            
           tle spisem logiko, ki jo zatem spravim v cubit posebi... 
           torej rabmo router d gremo v bodisi prvi zaslon bodisi drugi 
           

          */

        }catch(e){
            print(e); 
        }
        } 
      )
    );
  }
}