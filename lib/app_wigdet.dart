import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/home_page.dart';
import 'package:hello/main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.purple, brightness: Brightness.light),
      home: HomePage(),
    );
  }
}
