
import 'package:cert_a_pro/widgets/category_grid.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum FilterOptions { Favorites, All }

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Welcome",
          ),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    //print("hit favorites");
                  } else {
                    //print("hit all");
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                const PopupMenuItem(
                    value: FilterOptions.Favorites,
                    child: Text("Only Favorites")),
                const PopupMenuItem(
                    value: FilterOptions.All, child: Text("Show All")),
              ],
            ),
          ],
        ),
        body: const CategoryGrid());
  }
}
