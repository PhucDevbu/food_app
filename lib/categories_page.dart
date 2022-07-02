import 'package:flutter/material.dart';
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [

      ],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
            childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisExtent: 10
      ),
    );
  }
}
