import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/api/apiRepository.dart';
import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/screens/register.dart';
import 'package:dobavnice_app/singletons.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'loading_state.dart';




class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingInitialState());

  DobavnicaApi api = locator<DobavnicaApi>(); // getIt

  Future<void> fetchDataAndNavigate() async{

    final prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('id') ?? '';
    String deviceId = prefs.getString('deviceId') ?? '';
    
    //prefs.remove('id');
    //to bos uporabu s pomocjo gumba logout (da odstranis vn iz preferenc): 
    
    if(id == '' || deviceId == ''){
      emit(LoadingErrorState());
    }
    AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: id, deviceId: deviceId);
    
    final response2 = await api.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: Constants.tenant, company: Constants.company, body: y);  
    final response3 = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
      if (response3.isSuccessful){
        if (response3.body != null){
          emit(loadingSuccessState(response3.body));
        }
    }    
  }
}


