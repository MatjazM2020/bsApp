import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'document_list_state.dart';

class DocumentListCubit extends Cubit<DocumentListState> {
  DocumentListCubit() : super(DocumentListInitial());
}
