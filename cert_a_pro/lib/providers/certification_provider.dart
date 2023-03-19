import 'package:cert_a_pro/providers/answer.dart';
import 'package:cert_a_pro/providers/certification.dart';
import 'package:cert_a_pro/providers/question.dart';
import 'package:flutter/material.dart';

class Certifications with ChangeNotifier {
  final List<Certification> _certifications = [
    Certification(
        id: "cert1",
        title: "Certified System Administrator",
        categoryID: "c1",
        questions: [
          Question(
              id: "q1",
              question: "What is the Virtual Chat box used in Servicenow?",
              questionType: QuestionType.selectOne,
              correctAnswerID: "a2",
              answers: [
                Answer(id: "a1", answer: "Alexa"),
                Answer(id: "a2", answer: "Virtual Agent"),
                Answer(id: "a3", answer: "ChatGPT"),
                Answer(id: "a4", answer: "Google"),
                Answer(id: "a5", answer: "Siri"),
              ]),
          Question(
              id: "q2",
              question: "What is the Virtual Chat box used in Servicenow?",
              questionType: QuestionType.selectOne,
              correctAnswerID: "a2",
              answers: [
                Answer(id: "a1", answer: "Alexa"),
                Answer(id: "a2", answer: "Virtual Agent"),
                Answer(id: "a3", answer: "ChatGPT"),
                Answer(id: "a4", answer: "Google"),
                Answer(id: "a5", answer: "Siri"),
              ]),
          Question(
              id: "q3",
              question: "What is the Virtual Chat box used in Servicenow?",
              questionType: QuestionType.selectOne,
              correctAnswerID: "a2",
              answers: [
                Answer(id: "a1", answer: "Alexa"),
                Answer(id: "a2", answer: "Virtual Agent"),
                Answer(id: "a3", answer: "ChatGPT"),
                Answer(id: "a4", answer: "Google"),
                Answer(id: "a5", answer: "Siri"),
              ])
        ])
  ];

  List<Certification> get certifications {
    return [..._certifications];
  }

  

  Certification findByID(String categoryID) {
    return _certifications
        .firstWhere((certification) => certification.categoryID == categoryID);
  }
}
