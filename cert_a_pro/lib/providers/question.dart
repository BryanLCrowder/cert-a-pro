import 'package:cert_a_pro/providers/answer.dart';

enum QuestionType { selectAll, selectOne }

class Question {
  final String id;
  final String question;
  final QuestionType questionType;
  final Answer correctAnswer;
  final List<Answer> answers;

  Question(
      {required this.id,
      required this.question,
      required this.questionType,
      required this.correctAnswer,
      required this.answers});
}
