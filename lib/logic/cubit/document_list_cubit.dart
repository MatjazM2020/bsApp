import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart'; 


class DocumentListCubit extends Cubit<List<ClaimDocumentsResponse>> {
   DocumentListCubit() : super([]); 

   void setDocumentList(List<ClaimDocumentsResponse> newDocls){
    emit(newDocls); 
   }
}
