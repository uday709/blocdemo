part of 'my_view_bloc.dart';

@immutable
abstract class MyViewState {}

class MyViewInitial extends MyViewState {}

class MyintiaalValueState extends MyViewState {
  int i;
  MyintiaalValueState(this.i);
}