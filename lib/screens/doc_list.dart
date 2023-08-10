import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:flutter/material.dart';

class DocumentList extends StatelessWidget {
  DocumentList({super.key, required this.docls});

  final List<ClaimDocumentsResponse> docls;

  Widget build(context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: docls.length,
        itemBuilder: (ctx, index) => Text(
          docls[index].toString(),
        ),
      ),
    );
  }
}
