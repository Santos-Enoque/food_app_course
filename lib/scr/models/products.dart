import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const RATING = "rating";
  static const IMAGE = "image";
  static const PRICE = "price";
  static const RESTAURANT_ID = "restaurantId";
  static const RESTAURANT = "restaurant";
  static const CATEGORY = "category";
  static const FEATURED = "featured";
  static const RATES = "rates";

  String _id;
  String _name;
  String _restaurantId;
  String _restaurant;
  String _category;
  String _image;
  double _rating;
  double _price;
  int _rates;

  bool _featured;

  String get id => _id;

  String get name => _name;

  String get restaurant => _restaurant;

  String get restaurantId => _restaurantId;

  String get category => _category;

  String get image => _image;

  double get rating => _rating;

  double get price => _price;

  bool get featured => _featured;

  int get rates => _rates;


  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data[ID];
    _image = snapshot.data[IMAGE];
    _restaurant = snapshot.data[RESTAURANT];
    _restaurantId = snapshot.data[RESTAURANT_ID];
    _id = snapshot.data[ID];
    _featured = snapshot.data[FEATURED];
    _price = snapshot.data[PRICE];
    _category = snapshot.data[CATEGORY];
    _rating = snapshot.data[RATING];
    _rates = snapshot.data[RATES];

  }
}
