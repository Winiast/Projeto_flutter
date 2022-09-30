import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/controllers/App_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Gustavo Application")),
        body: Container(
            child: Switch(
          value: App_controller.instance.darkTheme,
          onChanged: ((value) {
            App_controller.instance.changeTheme();
          }),
        )),
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
