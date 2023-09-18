import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/logic/cubit/packet_detail_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:jwt_decoder/jwt_decoder.dart';


class ScanScreen extends StatefulWidget{
  const ScanScreen({super.key});
  @override
  State<StatefulWidget> createState() => _ScanPageState();
}


class _ScanPageState extends State<ScanScreen>{
  MobileScannerController? _scannerController;
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
 void initState(){
  super.initState();
  _scannerController = MobileScannerController(); 
 }
 
 @override
  void dispose() {
    _scannerController?.dispose();
    super.dispose();
  }




 @override
 Widget build(BuildContext context){
  final docls = context.watch<DocumentListCubit>();
  docls.updateDocuments(); 
  return Scaffold(appBar: AppBar(title: const Text('Scan')),
  body: 
   MobileScanner(
    controller: _scannerController,
    onDetect: (capture) async {
        try{
          String barcode = capture.barcodes[0].rawValue!; 
          final api = GetIt.instance<DobavnicaApi>(); 
          Map<String, dynamic> decodedToken = JwtDecoder.decode(barcode);  //to bos mogoce rabu, ce poskeniras isto QR kodo v drugo.    
          final resp = await api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barcode));

         if(docls.state.contains(resp.body![0])){ //ker ima vedno samo en element notr v listu 
          await context.read<DocumentDetailGetPacketsCubit>().getSigningDocuments(resp.body![0].id);
          router.go(Constants.documentDetailViewPath);
          _scannerController?.dispose();
          }else{
          await context.read<PacketDetailCubit>().getPacketInfo(resp.body![0].id, decodedToken['id']);
          router.go(Constants.packetDetailViewPath); 
          _scannerController?.dispose();
          }
        }catch(e){
          showPopupError(context, '$e its a problem'); 
        }
      } 
     )
    );
  }
}






/*TextButton(child: Text('eyo'),onPressed: ()async{ //testing widget (without the use of phone)
          final api = GetIt.instance<DobavnicaApi>();          
          String barCode = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3N1ZXIiOiI2NGM4ZWI5MzU5N2UyYmRmZGY1Y2Y3Y2MiLCJpZCI6IjY0ZjA1MmFmMDU2YmFhNGFhN2ZkOWRiOSIsIm5iZiI6MTY5MzQ3MTQwNywiZXhwIjoxNzI1MDkzODA3LCJpYXQiOjE2OTM0NzE0MDd9.7ff2QnRqNj0pheaggg1jteq-_uuXLI9TNam3M4xJnPQ";
          Map<String, dynamic> decodedToken = JwtDecoder.decode(barCode);

          final resp = await api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barCode));   

           if(docls.state.contains(resp.body![0])){
          await context.read<PacketDetailCubit>().getPacketInfo(resp.body![0].id, resp.body![0].resources![0].id );
          print(resp.body![0].id); 
          print(resp.body![0].resources![0].id); 

          router.go(Constants.packetDetailViewPath); 
          }else{
          //await context.read<PacketDetailCubit>().getPacketInfo(decodedToken['id']);
          //router.go(Constants.packetDetailViewPath); 
          }
  }, )*/
          