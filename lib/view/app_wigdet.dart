import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/controllers/App_controller.dart';
import 'package:hello/view/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: App_controller.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.purple,
                brightness: App_controller.instance.darkTheme
                    ? Brightness.light
                    : Brightness.dark),
            home: HomePage(),
          );
        });
  }
}
