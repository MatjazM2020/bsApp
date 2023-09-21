import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';

/* INFO: 
  This cubit is about retrieving the DOCUMENT that we are searching for (passed in as an argument - id), and storing it in the state of the cubit. 
*/

class DocumentDetailGetPacketsCubit extends Cubit<ClaimDocumentsResponse> {
  DocumentDetailGetPacketsCubit() : super(ClaimDocumentsResponse());
  
  void setDocumentList(ClaimDocumentsResponse docls){
    emit(docls); 
  }

  Future<void> getSigningDocuments(String? id) async{
    DobavnicaApi api = locator<DobavnicaApi>(); 
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); //this call gives us all of the unsigned documents 
    setDocumentList(response.body!.firstWhere((element) => element.id == id));  //finding the right document (with the right id)
  }

}
