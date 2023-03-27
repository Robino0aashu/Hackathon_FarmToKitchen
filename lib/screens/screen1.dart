import 'package:flutter/material.dart';

import '../widgets/home_list.dart';
class Screen1 extends StatelessWidget {

  ScrollController _Lvl2Controller = ScrollController();
  ScrollController _Lvl1Controller = ScrollController();

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(37,108,52,1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Profit Flip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       height: 50,
              //       width: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.home,
              //         color: Colors.green,
              //       ),
              //     ),
              //     Container(
              //       height: 50,
              //       width: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.sell_sharp,
              //         color: Colors.green,
              //       ),
              //     ),
              //     Container(
              //       height: 50,
              //       width: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.currency_rupee,
              //         color: Colors.green,
              //       ),
              //     ),
              //     Container(
              //       height: 50,
              //       width: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.person,
              //         color: Colors.green,
              //       ),
              //     ),
              //   ],
              // ),
              Text('Hi User!!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                  ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(165,208,90,1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          //controller: _Lvl1Controller,
          child: Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              padding: EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: HomeList(),
            ),
          ),
        ),
      ],);
  }
}
