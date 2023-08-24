import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dobavnice_app/routes/routers.dart';
part 'loading_state.dart';





class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingInitialState());

  Future<void> fetchDataAndNavigate() async{
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('id') ?? '';
    String deviceId = prefs.getString('deviceId') ?? ''; 

    if(id == '' || deviceId == ''){
      router.go(Constants.registerPath);      
    }else{
    DobavnicaApi api = locator<DobavnicaApi>();  
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
    router.go(Constants.documentPath, extra: response.body);  
    }
  }    
}
