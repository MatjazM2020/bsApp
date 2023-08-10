import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/client_index.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<DobavnicaApi>(
    DobavnicaApi.create(baseUrl: Uri.dataFromString(Constants.baseUrl), interceptors: [AuthInterceptor]), //ne rabis passat notr tokena, ker to handlas v interceptorju 
  );
}


