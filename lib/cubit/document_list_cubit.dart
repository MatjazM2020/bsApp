import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dobavnice_app/singletons.dart';


part 'document_list_state.dart';

class DocumentListCubit extends Cubit<DocumentListState>{
  DocumentListCubit() : super(DocumentListInitial());

  void navigation(int index){
    if(index == 0){
      emit(DocumentListHome());
    }else if(index == 1){
      emit(DocumentListScan()); 
    }else{
      emit(DocumentListSettings());
    }
  }
}
