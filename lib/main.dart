import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  setupLocator();
  runApp(
    BlocProvider(
      create: (context) => DocumentListCubit(), 
      child: MaterialApp.router(
      routerConfig: router,
    ), 
    )
  );
}
