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
            child: Center(
                child: GestureDetector(
          child: Text("Contador: $contador", style: TextStyle(fontSize: 20.0)),
        ))),
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
