import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${food.name}'),
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif', image: food.urlImage),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
            'Ingredients: ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
          Expanded(
            child: ListView.builder(
                itemCount: food.ingredients?.length,
                itemBuilder: (context, index) {
                  String ingredient = food.ingredients![index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        '#${index + 1}',
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ),
                    title: Text(
                      ingredient,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
