import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';

import 'detail_food_page.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;
  FoodsPage({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Category;
    List<Food> foods =
        fakeFoods.where((food) => food.categoryId == arguments.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Food form ${arguments.content}'),
      ),
      body: Center(
          child: Center(
            child: foods.length>0? ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  Food food = foods[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailFoodPage(food: food)));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.hardEdge,
                            child: Center(
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading.gif',
                                  image: food.urlImage),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                  Border.all(color: Colors.white, width: 2)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Text(
                                    '${food.duration.inMinutes} minutes',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                }):
                Text('No food found',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), )


      )),
    );
  }
}
