import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'my_view_event.dart';
part 'my_view_state.dart';


class MyViewBloc extends Bloc<MyViewEvent, MyViewState> {

  int? cnt;
  MyViewBloc() : super(MyViewInitial()) {
    on<MyViewEvent>((event, emit) {
      // TODO: implement event handler
    });


    on<MyintialValueEvent>((event, emit) {
      cnt = event.i;

      emit(MyintiaalValueState(cnt!));

    });
    on<Myincrement>((event, emit) {
      cnt = cnt! + 1;

      emit(MyintiaalValueState(cnt!));
    });
  }
}
