import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart'; 

/* INFO: 
   This cubit just calls the api for retrieving the unsigned documents list, and storing it in its state.  
*/ 

class DocumentListCubit extends Cubit<List<ClaimDocumentsResponse>> { 
   DocumentListCubit() : super([]); 

   void setDocumentList(List<ClaimDocumentsResponse> newDocls){
    emit(newDocls); 
   }

   void navigateToDocumentList(){ //this method is for navigation 
    router.go(Constants.documentDetailViewPath);
   }

   void updateDocuments() async{
    DobavnicaApi api = locator<DobavnicaApi>(); 
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments()); 
    emit(response.body!); 
   }
}






