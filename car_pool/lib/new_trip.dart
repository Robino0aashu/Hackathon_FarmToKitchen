import 'package:flutter/material.dart';
//import flutter date time picker
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class NewTrip extends StatefulWidget {
  const NewTrip({super.key});

  @override
  State<NewTrip> createState() => _NewTripState();
}

class _NewTripState extends State<NewTrip> {
  final _destinationController = TextEditingController();
  final _nameController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  DateTime _selectedTime =DateTime.now();

  void _presentDatePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime.now(),
      maxTime: DateTime(
          DateTime.now().year, DateTime.now().month + 1, DateTime.now().day),
      onChanged: (date) {
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          _selectedDate = pickedDate;
        });
      }
    });
  }

  void _presentTimePicker() {
    DatePicker.showTimePicker(
      context,
      showTitleActions: true,
      onChanged: (time) {
      },
      currentTime: DateTime.now(),
    ).then((currentTime){
      if(currentTime == null){
        return;
      }else{
        setState(() {
          _selectedTime = currentTime;
        });
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create New Pool',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    labelText: 'Name',
                  ),
                  controller: _nameController,
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    labelText: 'Destination',
                  ),
                  controller: _destinationController,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Date: ${DateFormat.yMMMd().format(_selectedTime)}',
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          _presentDatePicker();
                        },
                        child: const Text(
                          'Select Date of Travel',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Time: ${DateFormat.jm().format(_selectedDate)}',
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          _presentTimePicker();
                        },
                        child: const Text(
                          'Select Time of Travel',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color.fromRGBO(2, 48, 71, 1)),
                    fixedSize: MaterialStatePropertyAll(Size(300, 25)),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
