import 'dart:convert';
import 'model.dart';

List<Order> parseOrders(String jsonString) {
  final jsonData = jsonDecode(jsonString);
  final orders = <Order>[];

  for (var orderData in jsonData) {
    final order = Order(
      item: orderData['Item'],
      itemName: orderData['ItemName'], 
      price: orderData['Price'].toDouble(),
      currency: orderData['Currency'],
      quantity: orderData['Quantity'],
    );
    orders.add(order);
  }

  return orders;
}
