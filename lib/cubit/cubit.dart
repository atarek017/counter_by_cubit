import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_cubit/cubit/sates.dart';

class CounterCubit extends Cubit< CounterStates > {

  CounterCubit() : super(CounterInitialState());

  static CounterCubit go(context) => BlocProvider.of(context);


  int counter = 1;

  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }

  void plus() {
    counter++;

    emit(CounterPlusState(counter));
  }
}
