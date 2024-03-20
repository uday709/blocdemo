part of 'my_view_bloc.dart';

@immutable
abstract class MyViewEvent {}

class MyintialValueEvent extends MyViewEvent {
  int i;
  MyintialValueEvent(this.i);
}
class Myincrement extends MyViewEvent {


}