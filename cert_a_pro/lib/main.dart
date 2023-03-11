import 'package:cert_a_pro/pages/certification_page.dart';
import 'package:cert_a_pro/pages/landing_page.dart';
import 'package:cert_a_pro/providers/category_provider.dart';
import 'package:cert_a_pro/providers/certification_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext ctx) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext ctx) => Certifications(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(

          scaffoldBackgroundColor: const Color.fromARGB(255 ,83, 221, 108),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: const LandingPage(),
        routes: {
          CertificationPage.routeName: (ctx) => const CertificationPage(),
        },
      ),
    );
  }
}
