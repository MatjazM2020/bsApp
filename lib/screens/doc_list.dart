import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({super.key, required this.docls});
  final List<ClaimDocumentsResponse> docls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: docls.length,
        itemBuilder: (ctx, index) => Text(
          docls[index].toString(),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
             prefs.remove('id'); 
             prefs.remove('deviceId'); 
             router.go(Constants.registerPath);
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
