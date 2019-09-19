import 'package:flutter/material.dart';
import 'login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myTest',
      theme: ThemeData(brightness: Brightness.dark),
      routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => new Login()
      }
    );
  }
}
