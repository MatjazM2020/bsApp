import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';



class DocumentDetailGetPacketsCubit extends Cubit<ClaimDocumentsResponse> {
  DocumentDetailGetPacketsCubit() : super(ClaimDocumentsResponse());
  
  void setDocumentList(ClaimDocumentsResponse docls){
    emit(docls); 
  }

  Future<void> getSigningDocuments(String? id) async{
    DobavnicaApi api = locator<DobavnicaApi>(); 
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); 
    setDocumentList(response.body!.firstWhere((element) => element.documentSigningRequestId == id));  
  }
}
