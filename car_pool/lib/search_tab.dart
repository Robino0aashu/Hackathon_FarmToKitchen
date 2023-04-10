import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(25),
        elevation: 20,
        color: Color.fromRGBO(242, 242, 242, 1),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(33, 158, 188, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 250,
                child: const TextField(
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    border: InputBorder.none,
                    hintText: 'Search for existing carpool',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(154,154,154, 1),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                  child: IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(33, 158, 188, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.search),
                onPressed: () {},
              )),
            ],
          ),
        ));
  }
}

