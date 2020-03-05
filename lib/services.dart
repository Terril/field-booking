import 'package:http/http.dart' as http;
import 'dart:async' show Future;
import 'dart:async';
import 'model/field_booking_model.dart';

String url = 'http://localhost:8080/sports/fields/list';

Future<FieldBooking> getAllFields() async {
  final response = await http.get(url);
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return fieldBookingFromJson(response.body);
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load fields');
  }
}