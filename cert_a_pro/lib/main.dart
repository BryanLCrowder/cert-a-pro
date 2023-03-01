import 'package:cert_a_pro/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: const LandingPage(),
        routes: const {
        },
      ),
    );
  }
}
