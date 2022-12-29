import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './cart.dart';
import 'package:flutter/material.dart';

class OrderItem {
  final String id;

  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    required this.id,
    required this.products,
    required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  final List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    const url = 'https://first-ecom.firebaseio.com/orders.json';
    final timeStamp = DateTime.now();
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode({
            'id': DateTime.now().toString(),
            'amount': total,
            'dateTime': timeStamp.toIso8601String(),
            'products': cartProducts
                .map((cp) => {
                      'id': cp.id,
                      'title': cp.name,
                      'quantity': cp.quantity,
                    })
                .toList(),
          }));
      _orders.insert(
          0,
          OrderItem(
              id: json.decode(response.body)['name'],
              dateTime: timeStamp,
              products: cartProducts));
      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }
}
