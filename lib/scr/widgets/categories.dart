import 'package:flutter/material.dart';
import 'package:food_course/scr/models/category.dart';

import '../helpers/style.dart';
import 'custom_text.dart';

List<Category> categoriesList = [

   Category(name: "Shawarmas", image: "salad.png"),
   Category(name: "Pizza", image: "salad.png"),
   Category(name: "Sandwiches", image: "salad.png"),
   Category(name: "Wafles", image: "salad.png"),
   Category(name: "Burgers", image: "salad.png"),
   Category(name: "Kebabs", image: "salad.png"),
   Category(name: "Spicy Crispy Fried Chicken Wings", image: "salad.png"),
   Category(name: "Ribs Meals", image: "salad.png"),
   Category(name: "Fried Rice Dishes", image: "salad.png"),
   Category(name: "Salad", image: "salad.png"),
   Category(name: "Jollof Rice Dishes", image: "steak.png"),
   Category(name: "Plain Rice Dishes", image: "sandwich.png"),
   Category(name: "Zeallers Spaghetti", image: "ice-cream.png"),
   Category(name: "Grilled/Fried Pork", image: "ice-cream.png"),
   Category(name: "Sea food", image: "fish.png"),
   Category(name: "Drinks", image: "pint.png")





];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                      decoration:
                      BoxDecoration(color: white, boxShadow: [
                        BoxShadow(
                            color: Colors.red[50],
                            offset: Offset(4, 6),
                            blurRadius: 20),
                      ]),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child:
                        Image.asset("images/${categoriesList[index].image}", width: 50),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: categoriesList[index].name,
                    size: 14,
                    color: black,
                  )
                ],
              ),
            );
          }),
    );
  }
}
