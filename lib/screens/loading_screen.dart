import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:flutter/material.dart';


class LoadingScreen extends StatefulWidget {   
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {

  final LoadingCubit _loadingCubit = LoadingCubit();

  @override
  void initState() {
    super.initState();
    _loadingCubit.fetchDataAndNavigate();
  }

  @override
  void dispose() {
    _loadingCubit.close();
    super.dispose();
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