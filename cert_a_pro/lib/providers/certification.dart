import 'package:cert_a_pro/providers/question.dart';
import 'package:flutter/material.dart';

class Certification with ChangeNotifier {
  final String id;
  final String title;
  final String categoryID;
  final List<Question> questions;

  Certification({
    required this.id,
    required this.title,
    required this.categoryID,
    required this.questions,
  });
}
