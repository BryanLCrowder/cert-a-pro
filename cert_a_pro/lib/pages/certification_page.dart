import 'package:cert_a_pro/providers/certification.dart';
import 'package:cert_a_pro/providers/certification_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CertificationPage extends StatefulWidget {
  const CertificationPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/certification-page';

  @override
  State<CertificationPage> createState() => _CertificationPageState();
}

class _CertificationPageState extends State<CertificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 10, // Replace with the number of items in your list
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('$index'),
                  ),
                  title: Text('Item $index'),
                  subtitle: Text('Description of item $index'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Replace with the action you want to perform when the item is tapped
                  },
                ),
              );
            }));
  }
}
