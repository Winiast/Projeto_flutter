import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;
  String pharse = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.cyan,
            child: Center(
                child: Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Center(
                  child: Container(
                child: Text("Login"),
              )),
            )),
          ),
        )),
        appBar: AppBar(title: Text("Gustavo Application")),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              contador++;
            })
          },
          child: Icon(Icons.add),
        ));
  }
}
