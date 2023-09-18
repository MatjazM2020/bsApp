import 'package:dobavnice_app/core/singletons.dart';
import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/logic/cubit/packet_detail_cubit.dart';
import 'package:dobavnice_app/models/ThemeData.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DocumentListCubit(),
        ),
        BlocProvider(
          create: (context) => DocumentDetailGetPacketsCubit(),
        ), 
        BlocProvider(
          create: (context) => LoadingCubit(),
        ),
        BlocProvider(
          create: (context) => PacketDetailCubit(),
        )
      ],
      child: MaterialApp.router(
        theme: AppTheme.lightTheme,
        routerConfig: router,
      ),
    ),
  );
}



