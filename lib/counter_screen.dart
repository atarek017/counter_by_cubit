import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_cubit/cubit/cubit.dart';
import 'package:counter_cubit/cubit/sates.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if(state is CounterMinusState) print("Minus state ${state.counter}");
          if(state is CounterPlusState) print("Plus state ${state.counter}");
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      CounterCubit.go(context).minus();
                    },
                    child: Icon(Icons.minimize),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '${CounterCubit.go(context).counter}',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.go(context).plus();
                    },
                    child:   Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
