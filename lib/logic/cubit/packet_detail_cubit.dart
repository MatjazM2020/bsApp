import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';

/* INFO: 
  This cubit is for the packet_detail_view screen. 
*/ 

class PacketDetailCubit extends Cubit<SigningDocumentResource> {
  PacketDetailCubit() : super(SigningDocumentResource(id: 'none'));


  void setDocumentList(SigningDocumentResource docls) {
    emit(docls);
  }


  Future<void> getPacketInfo(String? id, String? packetId) async {
    DobavnicaApi api = locator<DobavnicaApi>();
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
    setDocumentList(response.body!.firstWhere((element) => element.id == id).resources!.firstWhere(((element) => element.id == packetId))); 
  }


  Future<void> confirmDocumentResource({required String id, required String documentId, String? reason}) async{ //confirm the packet, and either open the Scanner again, or navigate to the document_detail_view where we can sign the document
    
   DobavnicaApi api = locator<DobavnicaApi>(); 
   await api.apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost(tenant: Constants.tenant, company: Constants.company, body: DocumentResourceRequest(id: id,documentId: documentId,reason: reason??'')); // TODO - reason is not yet handled 
   final res = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); 
   final x = res.body!.firstWhere((element) => element.id == documentId).resources!; //access the resources of the document and store them in variable x 
 
  bool tf = false; 
  for(var i= 0; i<x.length; i++){ //for loop to check there exists an unconfirmed packet in this document. 
    if(!x[i].confirmed!){
      setDocumentList(x[i]); 
      tf = true; 
    }
   }
  
   if(tf == true){ //if there exists an unconfirmed packet, we go back to scanning
   router.go(Constants.scanPath);
   }else{ //if there does not exist such a packet (meaning all packets have been confirmed), we navigate to the document_detail_view page, where we can sign the document 
   router.go(Constants.documentDetailViewPath); // <--- THIS IS THE LAST STEP OF THE FLOW THAT I CODED. 
   }
  }
}


















