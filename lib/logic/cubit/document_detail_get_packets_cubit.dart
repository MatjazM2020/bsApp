import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';



class DocumentDetailGetPacketsCubit extends Cubit<List<SigningDocumentResource>> {
  DocumentDetailGetPacketsCubit() : super([]);
  
  void setDocumentList(List<SigningDocumentResource> docls){
    emit(docls); 
  }
  

  Future<void> getSigningDocuments(String? id) async{
    DobavnicaApi api = locator<DobavnicaApi>(); 
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); 
    setDocumentList(response.body!.firstWhere((element) => element.id == id).resources!);  
    print(response.body!.firstWhere((element) => element.id == id).resources!);
    router.go(Constants.documentDetailViewPath);
  }
}
