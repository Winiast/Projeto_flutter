import 'package:flutter/material.dart';
import 'package:hello/controllers/App_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        appBar: AppBar(
          title: Text("Gustavo Application"),
          actions: [CustomSwitch()],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
                child: Column(
              children: [Text("Login"), Text("Nome: "), Text("Senha: ")],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ))),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              contador++;
            })
          },
          child: const Icon(Icons.add),
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: App_controller.instance.darkTheme,
      onChanged: ((value) {
        App_controller.instance.changeTheme();
      }),
    );
  }
}
