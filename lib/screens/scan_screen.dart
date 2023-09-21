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

/* INFO
  This is the page for scanning QR codes. 
*/

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
          String barcode = capture.barcodes[0].rawValue!; //this is stored in the JWT format! The barcodes list will always contain just one element (thats why we access the first one in the list)
          final api = GetIt.instance<DobavnicaApi>(); 
          Map<String, dynamic> decodedToken = JwtDecoder.decode(barcode);  //We decoded the JWT token to use the information later (documentid (document) and resourceid (packet))
          final resp = await api.apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ClaimDocumentsRequest(token: barcode)); //claiming the document, after this call, 
          //the document will get binded to the user, and only then will the documents be displayed in the home screen list (if we dont sign them immediately, so that they are unsigned documents)

         if(docls.state.contains(resp.body![0])){ //If we have multiple packets in the same document, we update the state of the relevant cubit and navigate to the document_detail_view screen
          await context.read<DocumentDetailGetPacketsCubit>().getSigningDocuments(decodedToken['documentid']);
          router.go(Constants.documentDetailViewPath); 
          _scannerController?.dispose();
          }else{ //if there is only one packet in the document, we navigate to the packet_detail_view screen directly
          await context.read<PacketDetailCubit>().getPacketInfo(decodedToken['documentid'], decodedToken['resourceid'] );
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


