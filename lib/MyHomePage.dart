import 'package:Bloc_App/DataScreen.dart';
import 'package:flutter/material.dart';
import 'CounterBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, List>(builder: (context, data) {
      return Material(
        color: Colors.yellow,
        child: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$data"),
              RaisedButton(
                  onPressed: () {
                    context
                        .read<CounterBloc>()
                        .decrement(["shafah", "anu", "binu"]);
                  },
                  child: Text("Add Data")),
              RaisedButton(
                  onPressed: () {
                    context.read<CounterBloc>().decrement(["no data"]);
                  },
                  child: Text("RESET")),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataScreen()),
                    );
                  },
                  child: Text("Goto Next Screen")),
            ],
          )),
        ),
      );
    });
  }
}
