import 'package:cert_a_pro/providers/category_provider.dart';
import 'package:cert_a_pro/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = Provider.of<Categories>(context);
    final categories = category.items;
    return GridView.builder(
      padding: const EdgeInsets.all(20.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/ 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: categories[i],
        child: const CategoryItem(),
      ),
      itemCount: categories.length,
    );
  }
}
