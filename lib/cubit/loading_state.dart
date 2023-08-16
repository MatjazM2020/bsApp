part of 'loading_cubit.dart';

abstract class LoadingState {}
class LoadingInitialState extends LoadingState {}
class LoadingErrorState extends LoadingState{}
class LoadingSuccessState extends LoadingState{
  final dynamic extraData; 
  LoadingSuccessState(this.extraData);
}






