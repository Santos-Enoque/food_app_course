import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_course/scr/helpers/style.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: SpinKitFadingCircle(
        color: black,
        size: 30,
      )
    );
  }
}
