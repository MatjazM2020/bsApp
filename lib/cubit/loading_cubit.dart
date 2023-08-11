import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/singletons.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'loading_state.dart';



class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingInitialState());

  Future<void> fetchDataAndNavigate() async{
    
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('id') ?? '';
    String deviceId = prefs.getString('deviceId') ?? ''; 
    if(id == '' || deviceId == ''){
      emit(LoadingErrorState());
    }
 
    DobavnicaApi api = locator<DobavnicaApi>();    
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
    
    //emit(LoadingSuccessState(response.body));     
   }    
}

