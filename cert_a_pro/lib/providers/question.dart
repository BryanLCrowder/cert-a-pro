import 'package:cert_a_pro/providers/answer.dart';
import 'package:flutter/material.dart';

enum QuestionType { selectAll, selectOne }

class Question with ChangeNotifier {
  final String id;
  final String question;
  final QuestionType questionType;
  final String correctAnswerID;
  final List<Answer> answers;

  Question(
      {required this.id,
      required this.question,
      required this.questionType,
      required this.correctAnswerID,
      required this.answers});
}
