import 'package:flutter/material.dart';
import 'package:flutter_food_ordering/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Chicken",
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Snacks & Sides",
            // isActive: true,
            press: () {},
          )
        ],
      ),
    );
  }
}