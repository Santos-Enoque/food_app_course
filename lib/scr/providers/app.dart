import 'package:flutter/material.dart';

enum SearchBy{PRODUCTS, RESTAURANTS}

class AppProvider with ChangeNotifier{
  bool isLoading = false;
  SearchBy search = SearchBy.PRODUCTS;
  String filterBy = "Products";

  void changeLoading(){
    isLoading = !isLoading;
    notifyListeners();
  }

  void changeSearchBy({SearchBy newSearchBy}){
    search = newSearchBy;
    if(newSearchBy == SearchBy.PRODUCTS){
      filterBy = "Products";
    }else{
      filterBy = "Restaurants";
    }
    notifyListeners();
  }

}