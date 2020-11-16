import 'package:Bloc_App/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'CounterBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, List>(builder: (context, data) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Bloc App"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
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
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text("Goto Home Screen")),
            ],
          )),
        ),
      );
    });
  }
}
