import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* INFO: 
  This is the entry point to the application, before we get data from the server (or we might not get it successfully), there is a circularProgressIndicator() running 
*/

class LoadingScreen extends StatefulWidget {   
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
    context.read<LoadingCubit>().fetchDataAndNavigate(context);
  }

  @override
  Widget build(BuildContext context){
          return const Scaffold(
            body: Center(
              child:
                  CircularProgressIndicator(), 
            ),
        );
    }
}