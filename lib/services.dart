import 'package:http/http.dart' as http;
import 'dart:async' show Future;
import 'dart:async';
import 'model/field_booking_model.dart';

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<FieldBooking> getAllFields() async {
  final response = await http.get(url);
  print(response.body);
  return fieldBookingFromJson(response.body);
}