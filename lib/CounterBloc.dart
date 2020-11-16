import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Cubit<List> {
  //["no data"] is the initial data
  CounterBloc() : super(["no data"]);

  //emit(n) set the data
  void decrement(List n) => emit(n);
}
