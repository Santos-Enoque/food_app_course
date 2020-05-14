import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_course/scr/helpers/screen_navigation.dart';
import 'package:food_course/scr/models/products.dart';
import 'package:food_course/scr/providers/product.dart';
import 'package:food_course/scr/screens/details.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';


import '../helpers/style.dart';
import 'custom_text.dart';
import 'loading.dart';


class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return  Container(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productProvider.products.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
                child: GestureDetector(
                  onTap: (){
                   changeScreen(_,Details(product: productProvider.products[index],));
                  },
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(color: white, 
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(-2, -1),
                          blurRadius: 5),
                    ]),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(child: Align(
                                alignment: Alignment.center,
                                child: Loading(),
                              )),
                              Center(
                                child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: productProvider.products[index].image, height: 126,),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(
                                text: productProvider.products[index].name ?? "id null",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomText(
                                    text: productProvider.products[index].rating.toString(),
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
                              child: CustomText(text: "\$${productProvider.products[index].price / 100}",weight: FontWeight.bold,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}

