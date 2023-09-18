import 'package:bloc/bloc.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/core/singletons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dobavnice_app/routes/routers.dart';
part 'loading_state.dart';


class LoadingCubit extends Cubit<LoadingState>{
  LoadingCubit() : super(LoadingInitialState());

  Future<void> fetchDataAndNavigate(BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();

    prefs.setString('id', '65030022274fb8d777456605'); //da ni potrebno registrirat novega (da gremo direkt na tega userja) -> to bomo izbrisali 
    prefs.setString('deviceId', '2571586c-c886-486b-aeee-417fb905b106'); // da ni potrebano.... -> to bomo izbrisali 

    String id = prefs.getString('id') ?? '';
    String deviceId = prefs.getString('deviceId') ?? ''; 

    if(id == '' || deviceId == ''){
      router.go(Constants.registerPath);      
    }else{
    DobavnicaApi api = locator<DobavnicaApi>();  
    final response = await api.apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(tenant: Constants.tenant, company: Constants.company, body: ListDocuments());
    final documentListCubit = context.read<DocumentListCubit>(); 
    documentListCubit.setDocumentList(response.body!);
    router.go(Constants.homeDocumentPath, extra: response.body);  
    }
  }    
}
