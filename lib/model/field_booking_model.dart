// To parse this JSON data, do
//
//     final fieldBooking = fieldBookingFromJson(jsonString);

import 'dart:convert';

FieldBooking fieldBookingFromJson(String str) => FieldBooking.fromJson(json.decode(str));

String fieldBookingToJson(FieldBooking data) => json.encode(data.toJson());

class FieldBooking {
  List<Field> fields;

  FieldBooking({
    this.fields,
  });

  factory FieldBooking.fromJson(Map<String, dynamic> json) => FieldBooking(
    fields: List<Field>.from(json["fields"].map((x) => Field.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
  };
}

class Field {
  int id;
  String title;
  String fieldType;
  String address;
  double lat;
  double lon;
  int phoneNumber;
  String contactPerson;
  int whatsappNumber;
  String emailAddress;
  int likes;
  List<VisitedFriend> visitedFriends;

  Field({
    this.id,
    this.title,
    this.fieldType,
    this.address,
    this.lat,
    this.lon,
    this.phoneNumber,
    this.contactPerson,
    this.whatsappNumber,
    this.emailAddress,
    this.likes,
    this.visitedFriends,
  });

  factory Field.fromJson(Map<String, dynamic> json) => Field(
    id: json["id"],
    title: json["title"],
    fieldType: json["fieldType"],
    address: json["address"],
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
    phoneNumber: json["phoneNumber"],
    contactPerson: json["contactPerson"],
    whatsappNumber: json["whatsappNumber"],
    emailAddress: json["emailAddress"],
    likes: json["likes"],
    visitedFriends: List<VisitedFriend>.from(json["visitedFriends"].map((x) => VisitedFriend.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "fieldType": fieldType,
    "address": address,
    "lat": lat,
    "lon": lon,
    "phoneNumber": phoneNumber,
    "contactPerson": contactPerson,
    "whatsappNumber": whatsappNumber,
    "emailAddress": emailAddress,
    "likes": likes,
    "visitedFriends": List<dynamic>.from(visitedFriends.map((x) => x.toJson())),
  };
}

class VisitedFriend {
  String name;
  int visitedTimes;
  int id;
  int phoneNumber;

  VisitedFriend({
    this.name,
    this.visitedTimes,
    this.id,
    this.phoneNumber,
  });

  factory VisitedFriend.fromJson(Map<String, dynamic> json) => VisitedFriend(
    name: json["name"],
    visitedTimes: json["visitedTimes"],
    id: json["id"],
    phoneNumber: json["phoneNumber"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "visitedTimes": visitedTimes,
    "id": id,
    "phoneNumber": phoneNumber,
  };
}
