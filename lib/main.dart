import 'package:flutter/material.dart';
import 'SigninScreen.dart';
import 'HomeScreen.dart';
import 'SideScreen.dart';
import 'AddStore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: true,
      home: AddStore(),
    );
  }
}
