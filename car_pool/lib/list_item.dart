import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final DateTime time;
  final DateTime date;
  final String destination;
  final String name;

  ListItem(this.time, this.date, this.destination, this.name);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Color.fromRGBO(33, 158, 188, 1),
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                destination,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(12, 12, 10, 1),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(12, 12, 10, 1),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    //print current time,
                    'time',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 56, 62, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
        Container(
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(2, 48, 71, 1),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Join'),
          ),
        )
      ]),
    );
  }
}