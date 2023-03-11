import 'package:cert_a_pro/providers/category.dart';
import 'package:cert_a_pro/providers/certification.dart';
import 'package:flutter/material.dart';

class Certifications with ChangeNotifier {
  late List<Certification> _categories = [
    
    
  ];

  List<Certification> get categories {
    return [..._categories];
  }
}
