import 'package:flutter/material.dart';

import './list_item.dart';
import './search_tab.dart';
import './new_trip.dart';

import './models/trip.dart';

class MainScreen extends StatefulWidget {

  // String name;
  // String mail;
  // MainScreen(this.name, this.mail);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  final List<TripDetails> _tripDetailsList = [
    //some dummy values
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
    TripDetails(
        time: DateTime.now(),
        date: DateTime.now(),
        destination: 'MAA',
        name: 'Aashu Kumar',
        id: DateTime.now().toString()),
  ];

  void _startAddNewTrip(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bctx) {
          return GestureDetector(
            onTap: () {},
            child: NewTrip(),
            behavior: HitTestBehavior.translucent,
          );
        });
  }

  @override
  Widget build(BuildContext context) {

    final routeArgs=ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final appBar = AppBar(
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.005,
        ),
         Text(routeArgs['name']!),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/hacker.png'),
          radius: MediaQuery.of(context).size.width * 0.05,
        ),
      ]),
      backgroundColor: Theme.of(context).primaryColor,
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
        child: Column(children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.135,
            child: SearchTab(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.77,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return ListItem(
                    _tripDetailsList[index].time,
                    _tripDetailsList[index].date,
                    _tripDetailsList[index].destination,
                    _tripDetailsList[index].name,
                  );
                },
                itemCount: _tripDetailsList.length,
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _startAddNewTrip(context),
        label: const Text('Create New'),
        icon: const Icon(Icons.add),
        backgroundColor: Color.fromRGBO(2, 48, 71, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
