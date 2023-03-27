import 'package:flutter/material.dart';

import './screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(150, 194, 73, 1),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.white),
      ),
      home: MainScreen(),
    );
  }
}
