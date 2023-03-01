import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorites, All }

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  var _showOnlyFavorites = false;
  var _isInit = true;
  var _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome",),
         actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  //print("hit favorites");
                  _showOnlyFavorites = true;
                } else {
                  //print("hit all");
                  _showOnlyFavorites = false;
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
      body: const Text("Hello World")
    );
  }
}