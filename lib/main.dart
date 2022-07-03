import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(

        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Food\s Categories'),
        ),
        body: SafeArea(
          child: CategoriesPage(),
        )
      ),
    );
  }
}


