import 'package:cert_a_pro/providers/question.dart';

import 'category.dart';

class Certification {
  final String? id;
  final String? title;
  final String? categoryID;
  final List<Question> questions;

  Certification({
    required this.id,
    required this.title,
    required this.categoryID,
    required this.questions,
  });
}
