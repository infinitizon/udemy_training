import 'package:flutter/material.dart';
import 'package:meal_app/category_item.dart';

import './dummy-data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DealMeal"),),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (data) => CategoryItem(
                data.id,
                data.title,
                data.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
