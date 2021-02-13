import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Location {
  Location({this.Offices});
  final List<Office> Offices;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
}

class Office {
  Office(
      {this.address,
      this.id,
      this.image,
      this.lat,
      this.lng,
      this.name,
      this.phone,
      this.region});

  final String address;
  final String id;
  final String image;
  final double lat;
  final double lng;
  final String name;
  final String phone;
  final String region;

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);
}

Location _$LocationsFromJson(Map<String, dynamic> json) {
  return Location(
    Offices: (json['offices'] as List)
        ?.map((e) =>
            e == null ? null : Office.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Office _$OfficeFromJson(Map<String, dynamic> json) {
  return Office(
    address: json['address'] as String,
    id: json['id'] as String,
    image: json['image'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lng: (json['lng'] as num)?.toDouble(),
    name: json['name'] as String,
    phone: json['phone'] as String,
    region: json['region'] as String,
  );
}

Future<String> getJsondoc() async {
  return await rootBundle.loadString('assets/googleoffices.json');
}

Future<Location> getGoogleOffices() async {
  // Retrieve the locations of Google offices
  final json_doc = await rootBundle.loadString('assets/googleoffices.json');
  return Location.fromJson(json.decode(json_doc));
}
