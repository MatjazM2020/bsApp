import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart'; 
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';


class DocumentListCubit extends Cubit<List<ClaimDocumentsResponse>> {
   DocumentListCubit() : super([]); 

   void setDocumentList(List<ClaimDocumentsResponse> newDocls){
    emit(newDocls); 
   }

   void navigateToDocumentList(){
    router.go(Constants.documentDetailViewPath);
   }
 
}






