// import 'package:flutter/material.dart';

class TravelLog {
  final String note;
  final String imgUrl;
  final List<String> multiImage;
  final String title;
  final String location;
  final DateTime timestamp;

  TravelLog({
    required this.note,
    required this.imgUrl,
    required this.multiImage,
    required this.title,
    required this.location,
    required this.timestamp,
  });
}
