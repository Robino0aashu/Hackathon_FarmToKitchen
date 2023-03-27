import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import '../widgets/bottombar.dart';

import './screen1.dart';
import './screen2.dart';
import './screen3.dart';
import './screen4.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedPageIndex=0;
  late List<Widget> _pages;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex=index;
    });
    print(_selectedPageIndex);
  }

  @override
  void initState() {
    _pages=[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('My App'),
        // ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            backgroundColor: Colors.white,
            color: Colors.green,
            buttonBackgroundColor: Colors.grey.shade300,
            onTap: _selectPage,
            items: <Widget>[
              Icon(Icons.home),
              Icon(Icons.sell_sharp),
              Icon(Icons.currency_rupee),
              Icon(Icons.person)
            ])
      ),
    );
  }
}



            

      //       Container(
      //   height: 70,
      //   child: Column(
      //     children: [
      //       ClipRRect(
      //         borderRadius: BorderRadius.circular(40),
      //         child: BottomNavigationBar(
      //             type: BottomNavigationBarType.fixed,
      //             backgroundColor: Colors.green,
      //             iconSize: 20.0,
      //             selectedIconTheme: IconThemeData(size: 28.0),
      //             selectedItemColor: Colors.black,
      //             unselectedItemColor: Colors.white,
      //             selectedFontSize: 16.0,
      //             unselectedFontSize: 12,
      //             currentIndex: _selectedPageIndex,
      //             onTap: _selectPage,
      //             items: <BottomNavigationBarItem>[
      //               BottomNavigationBarItem(
      //                 icon: Icon(Icons.home),
      //                 label: "Home",
      //               ),
      //               BottomNavigationBarItem(
      //                 icon: Icon(Icons.search),
      //                 label: "Search",
      //               ),
      //               BottomNavigationBarItem(
      //                 icon: Icon(Icons.settings),
      //                 label: "Settings",
      //               ),
      //               BottomNavigationBarItem(
      //                 icon: Icon(Icons.person),
      //                 label: "Account",
      //               ),
      //             ]),
      //       ),
      //       SizedBox(height: 7,),
      //     ],
      //   ),
      // ),
