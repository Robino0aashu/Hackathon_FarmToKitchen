import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/main_screen.dart';

import './providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => MarketStatus(),
        // ),
      ],
      child: MaterialApp(
        title: 'My App',
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(150, 194, 73, 1),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.white),
        ),
        home: const MainScreen(),
        routes: {
          //ScreenNew.routeName: (context)=>ScreenNew(),
          //LoanEligiblty.routeName: (context)=>LoanEligiblty(),
        },
      ),
    );
  }
}