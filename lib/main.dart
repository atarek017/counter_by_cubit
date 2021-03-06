import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/bloc_observer.dart';

void main() {


  Bloc.observer=MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}
