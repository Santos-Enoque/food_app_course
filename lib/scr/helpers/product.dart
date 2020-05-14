import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/products.dart';

class ProductServices {
  String collection = "products";
  Firestore _firestore = Firestore.instance;

  Future<List<ProductModel>> getProducts() async =>
      _firestore.collection(collection).getDocuments().then((result) {
        List<ProductModel> products = [];
        for(DocumentSnapshot product in result.documents){
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });

  Future<List<ProductModel>> getProductsByRestaurant({int id}) async =>
      _firestore.collection(collection).where("restaurantId", isEqualTo: id).getDocuments().then((result) {
        List<ProductModel> products = [];
        for(DocumentSnapshot product in result.documents){
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });


  Future<List<ProductModel>> getProductsOfCategory({String category}) async =>
      _firestore.collection(collection).where("category", isEqualTo: category).getDocuments().then((result) {
        List<ProductModel> products = [];
        for(DocumentSnapshot product in result.documents){
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });
}