import 'package:cert_a_pro/providers/answer.dart';
import 'package:cert_a_pro/providers/category.dart';
import 'package:cert_a_pro/providers/certification.dart';
import 'package:cert_a_pro/providers/question.dart';
import 'package:flutter/material.dart';

import 'certification_provider.dart';

class Categories with ChangeNotifier {
  final List<Category> _categories = [
    Category(
        id: "c1",
        title: "ServiceNow",
        img: "assets/images/servicenow.jpg",
    ),
    Category(
        id: "c2",
        title: "CompTia",
        img: 'assets/images/Comptia.png',),
    Category(
        id: "c3", title: "Cisco", img: 'assets/images/cisco.png',),
    Category(
        id: "c4",
        title: "Salesforce",
        img: 'assets/images/salesforce.jpg',
        ),
    Category(
        id: "c5",
        title: "Microsoft",
        img: 'assets/images/Microsoft.jpeg',
        ),
    Category(
        id: "c6", title: "Oracle", img: 'assets/images/oracle.png', ),
    Category(
        id: "c7", title: "Amazon", img: 'assets/images/amazon.jpg', ),
    Category(
        id: "c8", title: "Google", img: 'assets/images/google.jpg', ),
  ];

  List<Category> get items {
    return [..._categories];
  }
}
