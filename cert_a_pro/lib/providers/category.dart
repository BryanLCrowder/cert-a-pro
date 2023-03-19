import 'package:flutter/material.dart';

class Category with ChangeNotifier {
  final String id;
  final String title;
  final String img;

  bool isFavorite = false;

  Category(
      {required this.id,
      required this.title,
      required this.img,

      this.isFavorite = false});
}
