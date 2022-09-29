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
        appBar: AppBar(title: Text("Gustavo Application")),
        body: Container(
          height: 400,
          width: 400,
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
