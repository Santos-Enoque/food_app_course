import 'package:flutter/material.dart';
import 'package:food_course/scr/helpers/style.dart';

import 'custom_text.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 10),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(-2, -1),
                  blurRadius: 5),
            ]
        ),
//            height: 160,
        child: Row(
          children: <Widget>[
            Container(
              width: 140,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset("images/food.jpg", fit: BoxFit.fill,),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: "Pancakes",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(1, 1),
                                    blurRadius: 4),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.favorite_border,
                              color: red,
                              size: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      children: <Widget>[
                        CustomText(text: "from: ", color: grey, weight: FontWeight.w300, size: 14,),
                        SizedBox(width: 10,),
                        CustomText(text: "Santos Tacho: ", color: primary, weight: FontWeight.w300, size: 14,),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              text: "4.3",
                              color: grey,
                              size: 14.0,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: CustomText(text: "\$3.55",weight: FontWeight.bold,),
                      ),
                    ],
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
