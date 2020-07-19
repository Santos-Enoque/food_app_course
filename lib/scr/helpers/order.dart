import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_course/scr/models/cart_item.dart';
import 'package:food_course/scr/models/order.dart';

class OrderServices{
  String collection = "orders";
  Firestore _firestore = Firestore.instance;

  void createOrder({String userId ,String id,String description,String status ,List<CartItemModel> cart, int totalPrice}) {
   List<Map> convertedCart = [];
   List<String> restaurantIds = [];

   for(CartItemModel item in cart){
     convertedCart.add(item.toMap());
     restaurantIds.add(item.restaurantId);
   }


    _firestore.collection(collection).document(id).setData({
      "userId": userId,
      "id": id,
      "restaurantIds": restaurantIds,
      "cart": convertedCart,
      "total": totalPrice,
      "createdAt": DateTime.now().millisecondsSinceEpoch,
      "description": description,
      "status": status
    });
  }

  Future<List<OrderModel>> getUserOrders({String userId}) async =>
      _firestore
          .collection(collection)
          .where("userId", isEqualTo: userId)
          .getDocuments()
          .then((result) {
        List<OrderModel> orders = [];
        for (DocumentSnapshot order in result.documents) {
          orders.add(OrderModel.fromSnapshot(order));
        }
        return orders;
      });

}