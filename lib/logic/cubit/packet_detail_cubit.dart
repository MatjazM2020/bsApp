
import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';

class PacketDetailCubit extends Cubit<SigningDocumentResource> {
  PacketDetailCubit() : super(SigningDocumentResource(id: 'none'));


  void setDocumentList(SigningDocumentResource docls) {
    emit(docls);
  }


  Future<void> getPacketInfo(String? id, String? packetId) async {
    DobavnicaApi api = locator<DobavnicaApi>();
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
    setDocumentList(response.body!.firstWhere((element) => element.id == id).resources!.firstWhere(((element) => element.id == packetId))); //izberemo prvi paket, ker je ta tudi edini v tem primeru (packet detail page se odpre samo v tem primeru)
  }



  //ConfirmDocumentResource je funkcija, ki nam potrdi paket, in nas bodisi navigira na naslednji paket bodisi na dobavnico (za podpisat tam)
  Future<void> confirmDocumentResource({required String id, required String documentId, String? reason}) async{
   DobavnicaApi api = locator<DobavnicaApi>(); 
   await api.apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost(tenant: Constants.tenant, company: Constants.company, body: DocumentResourceRequest(id: id,documentId: documentId,reason: reason??'')); 
   //check the confirmed packets, if there are any left, navigate to the next one, 
   //if there are no more packets to be confirmed, go back to the document information page to sign the document 
   final res = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); 
   final x = res.body!.firstWhere((element) => element.id == id).resources!; 
   for(var i= 0; i<x.length; i++){
    if(!x[i].confirmed!){
      setDocumentList(x[i]); 
      router.go(Constants.packetDetailViewPath);
    }
   }
   router.go(Constants.documentDetailViewPath); //tuki bi mogu navigirat na stran od dobavnice, da jo podpises (ker paketi so ze vsi potrjeni preko for loopa)
  }
}


















