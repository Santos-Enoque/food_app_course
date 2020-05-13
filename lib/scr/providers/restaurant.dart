import 'package:flutter/material.dart';
import '../helpers/restaurant.dart';
import '../models/restaurant.dart';

class RestaurantProvider with ChangeNotifier{
  RestaurantServices _restaurantServices = RestaurantServices();
  List<RestaurantModel> restaurants = [];

  RestaurantProvider.initialize(){
    _loadRestaurants();
  }

  _loadRestaurants()async{
    restaurants = await _restaurantServices.getRestaurants();
    notifyListeners();
  }
}