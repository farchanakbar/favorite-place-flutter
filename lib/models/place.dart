import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  final String address;
  final double latitude;
  final double longitude;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
    // required this.location,
  }) : id = id ?? uuid.v4();

  final String? id;
  final String title;
  final String location;
  final File image;
  // final PlaceLocation location;
}
