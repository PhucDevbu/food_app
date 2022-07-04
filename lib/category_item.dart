import 'package:flutter/material.dart';
import 'foods_page.dart';
import 'models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: () {
        print('tap to category: ${category.content}');
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => FoodsPage(category: category,)));
        Navigator.pushNamed(context, FoodsPage.routeName,arguments: Category(id: category.id, content: category.content, color: category.color));
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                category.content,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [_color.withOpacity(0.8), _color],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
              color: _color,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}
