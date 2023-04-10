import 'package:flutter/material.dart';

import './login_page.dart';
import './main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(2, 48, 71, 1),
      ),
      home: Login(),
      routes: {
        '/mainSheet':(context) => MainScreen(),
        //use /mainscreen route
      },
    );
  }
}