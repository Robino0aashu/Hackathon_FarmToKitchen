import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.all(8),
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('In-Market'),
              Icon(
                Icons.agriculture,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Sold'),
              Icon(
                Icons.sell,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
