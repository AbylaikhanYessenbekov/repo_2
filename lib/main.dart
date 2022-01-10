import 'package:bloc_test_app2/bloc/event.dart';
import 'package:bloc_test_app2/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorBloc bloc = ColorBloc();

  Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if(state is ColorLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(state is ColorLoadedState) {
            return Scaffold(
              body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150.0,
                      width: 300.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          color: state.color,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),),

                        child: Center(
                          child: Text(
                            "Rounded Corner Rectangle Shape",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: () {
                            bloc.add(ChangeColor(color: Colors.red),);
                          },
                          color: Colors.red,
                          disabledColor: Colors.red,
                          child: Text(
                            'Red',
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            bloc.add(ChangeColor(color: Colors.blue),);
                          },
                          color: Colors.blue,
                          child: Text(
                            'Blue',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150.0,
                  width: 300.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0),),),

                    child: Center(
                      child: Text(
                        "Rounded Corner Rectangle Shape",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        bloc.add(ChangeColor(color: Colors.red),);
                      },
                      color: Colors.red,
                      disabledColor: Colors.red,
                      child: Text(
                        'Red',
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        bloc.add(ChangeColor(color: Colors.blue),);
                      },
                      color: Colors.blue,
                      child: Text(
                        'Blue',
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
