import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'CounterBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterBloc(),
        //if multiple blocs need to compain, then use MultiBlocProvider instead of BlocProvider, then providers[] as shown below:
        // providers: [
        //   BlocProvider<CounterBloc>(
        //     create: (BuildContext context) => CounterBloc(),
        //   ),
        // ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ));
  }
}
