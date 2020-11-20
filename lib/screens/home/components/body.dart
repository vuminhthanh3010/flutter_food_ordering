import 'package:flutter/material.dart';
import 'package:flutter_food_ordering/components/search_box.dart';
import 'package:flutter_food_ordering/constants.dart';
import 'package:flutter_food_ordering/screens/home/components/category_list.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        Row(
          children: [ItemCard()],
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  "assets/icons/burger_beer.svg",
                  width: size.width * 0.18,
                ),
              ),
              Text("Burger & Beer"),
              SizedBox(height: 10),
              Text(
                "MacDonal's",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
