import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
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
}



