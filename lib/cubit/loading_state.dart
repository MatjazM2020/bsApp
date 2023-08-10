part of 'loading_cubit.dart';

abstract class LoadingState {}
class LoadingInitialState extends LoadingState {}
class LoadingErrorState extends LoadingState{}
class loadingSuccessState extends LoadingState{
  final dynamic extraData; 
  loadingSuccessState(this.extraData);
}



//these classes represent different states (and hold necessary information regarding them)
//we emit one of these classes at the end from the loading_cubit and then we can perform logic accordingly 
//we are interested in the loadingSuccessstate which comes with the extra data and we can then use that data 
//to display the right list 
