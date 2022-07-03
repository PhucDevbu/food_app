import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';
import 'package:food_app/fake_data.dart';
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
            childAspectRatio: 4/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      children: fakeCategories.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),
    );
  }
}
