import 'package:dobavnice_app/cubit/loading_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, LoadingState>(
      bloc: _loadingCubit,
      builder: (context, state){
        if (state is LoadingInitialState) {
          return const Scaffold(
            body: Center(
              child:
                  CircularProgressIndicator(), 
            ),
          );
        } else if (state is LoadingSuccessState) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
          router.go(Constants.documentPath, extra: state.extraData); //ta extra data dobis vn iz api klica v loading_cubit 
        });
          return const Scaffold();
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
           router.go(Constants.registerPath);
        });
          return const Scaffold(); 
        }
      },
    );
  }
}