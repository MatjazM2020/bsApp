import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:meta/meta.dart';



class DocumentDetailGetPacketsCubit extends Cubit<List<GetDocumentsResponse>> {
  DocumentDetailGetPacketsCubit() : super([]);

  void setDocumentList(List<GetDocumentsResponse> docls){
    emit(docls); 
  }
  
  Future<void> getSigningDocuments() async{
    DobavnicaApi api = locator<DobavnicaApi>(); 
    final response = await api.apiPublicTenantPubCompanyDocumentSigningClientGetDocumentsSigningPost(tenant: Constants.tenant, company: Constants.company, body: GetDocumentsRequest(issuerId: '64c8eb93597e2bdfdf5cf7cc'));
    setDocumentList(response.body!); 
  }
}
