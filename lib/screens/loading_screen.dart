import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/screens/register.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
            CircularProgressIndicator(), // You can use any loading widget here
      ),
    );
  }

    Future<void> _fetchData() async {
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('id') ?? '';
    String deviceId = prefs.getString('deviceId') ?? '';
    //prefs.remove('id');
    //to bos uporabu s pomocjo gumba logout (da odstranis vn iz preferenc): 
    if(id == '' || deviceId == ''){
      router.go('/register');
    }

    AuthorizeTransportHandlerRequest y =
        AuthorizeTransportHandlerRequest(id: id, deviceId: deviceId);
    final response2 = await dobavnicaApi
        .apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(
            tenant: 'FLBDev', company: 'FLB', body: y);

    String token = response2.body!.token!;
    DateTime expires = response2.body!.expires!;

    if (expires.isBefore(currentTime)) {
      router.go('/register');
    } else {
      //The response and time are both valid, we can proceed to the last API call (to retrieve the Document List)
      /**************************************************************** */
      final dobavnicaApiAuthorized = DobavnicaApi.create(
        baseUrl: Uri.parse('https://devapp.flowbase.com'),
        interceptors: [AuthInterceptor(token)],
      );
      final response3 = await dobavnicaApiAuthorized
          .apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(
              tenant: 'FLBDev', company: 'FLB', body: ListDocuments());
      if (response3.isSuccessful) {
        if (response3.body != null) {
          router.go('/document', extra: response3.body!);
        }
      } else {
        router.go('/register');
      }
    }
  }
}
