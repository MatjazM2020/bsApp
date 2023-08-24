import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:jwt_decoder/jwt_decoder.dart';




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
          api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barcode.rawValue)); 
          ///tle naprej........

        }catch(e){
            print(e); 
        }
        } 
      )
    );
  }
}