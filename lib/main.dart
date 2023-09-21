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
    MultiBlocProvider( //we use this, to provide all of the bloc instances - becouse we must use the same instances of blocs throughout the files. 
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
      child: MaterialApp.router( //here we specify that we are using the go_router, and we can then use our routes/routers.dart file to control the navigations
        theme: AppTheme.lightTheme,
        routerConfig: router,
      ),
    ),
  );
}



