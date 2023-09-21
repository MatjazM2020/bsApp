import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/client_index.dart';
import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';

/* INFO: 
  Singletons class, where we create instances of classes that only need to be instantiated once. We then use these classes in other files. 
*/

GetIt locator = GetIt.instance;


void setupLocator() {
  locator.registerSingleton<DobavnicaApi>(
    DobavnicaApi.create(baseUrl: Uri(), interceptors: [AuthInterceptor()]), 
  );
  locator.registerSingleton<Uuid>(
    const Uuid()
  ); 
}








