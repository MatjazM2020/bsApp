import 'package:dobavnice_app/core/singletons.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/routes/routers.dart';


void main(){
  setupLocator();
  runApp(
    MaterialApp.router(
      routerConfig: router,
    ),
  );
}
