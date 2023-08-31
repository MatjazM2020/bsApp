import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PacketDetailview extends StatelessWidget {
  @override
  Widget build(context) {
    final docls = context.watch<DocumentListCubit>();
    return BaseScreen(body: 
      Column(
        children: [
          ListTile(title: Text('Name: ' + docls.state[0].signatoryName!)),
          ListTile(title: Text('Address: ' + docls.state[0].signatoryAddress!)),
          ListTile(title: Text('PostCode: ' + docls.state[0].signatoryPostCode!)),
          ListTile(title: Text('City: ' + docls.state[0].signatoryCity!)),
          ListTile(title: Text('Email: ' + docls.state[0].signatoryEmail!)),
          ListTile(title: Text('PhoneNumber: ' + docls.state[0].signatoryPhoneNo!)),
        ],
      ),
      text: 'Informacije'); 
  }
}