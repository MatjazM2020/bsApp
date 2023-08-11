import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:flutter/material.dart';



class DocumentList extends StatelessWidget {
  const DocumentList({super.key, required this.docls});
  final List<ClaimDocumentsResponse> docls;

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: docls.length,
        itemBuilder: (ctx, index) => Text( //TODO (KO BO NA DATABASE-U UPLOADAN SE LIST)
          docls[index].toString(),
        ),
      ),
    );
  }
}
