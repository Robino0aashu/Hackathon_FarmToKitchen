import 'package:flutter/foundation.dart';

class TripDetails {
  DateTime time;
  DateTime date;
  String destination;
  String name;
  //assign random value to id
  String id;

  TripDetails({
    required this.time,
    required this.date,
    required this.destination,
    required this.name,
    required this.id,
  });
}
