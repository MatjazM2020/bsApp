import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/api/authInceptor.dart';
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
    final dobavnicaApi = DobavnicaApi.create(baseUrl: Uri.parse('https://devapp.flowbase.com'));
    
    AuthorizeTransportHandlerRequest y = AuthorizeTransportHandlerRequest(id: id, deviceId: deviceId);
    final response2 = await dobavnicaApi.apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(tenant: 'FLBDev', company: 'FLB', body: y);
    String token = response2.body!.token!;
    DateTime expires = response2.body!.expires!;

    if (expires.isBefore(DateTime.now())){
      emit(LoadingErrorState());
    }else{
      final dobavnicaApiAuthorized = DobavnicaApi.create(baseUrl: Uri.parse('https://devapp.flowbase.com'),interceptors: [AuthInterceptor(token)],);
      final response3 = await dobavnicaApiAuthorized.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: 'FLBDev', company: 'FLB', body: ListDocuments());
      if (response3.isSuccessful){
        if (response3.body != null) {
          emit(LoadingSuccessState(response3.body)); 
        }
      } 
    }     
   }    
}