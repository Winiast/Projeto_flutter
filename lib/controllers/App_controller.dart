import 'package:flutter/cupertino.dart';

class App_controller extends ChangeNotifier {
  static App_controller instance = App_controller();

  bool darkTheme = false;
  changeTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}
