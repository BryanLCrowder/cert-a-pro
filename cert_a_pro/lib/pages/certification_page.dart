import 'package:cert_a_pro/providers/certification_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CertificationPage extends StatelessWidget {
  const CertificationPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/certification-page';

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    final certifications = Provider.of<Certifications>(context, listen: false);
    return Scaffold(
      body: 
        Text(categoryId.toString())
    );
  }
}
