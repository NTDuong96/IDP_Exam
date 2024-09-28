import 'package:flutter/material.dart';
import 'data_parser.dart';
import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Chuỗi JSON chứa dữ liệu đơn hàng
  final String jsonString = '''
    [...] 
  ''';

  final orders = parseOrders(jsonString);
  List<Order> filteredOrders = [];
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredOrders = orders;
  }

  void _filterOrders(String query) {
    setState(() {
      filteredOrders = orders
          .where((order) =>
              order.item.toLowerCase().contains(query.toLowerCase()) ||
              order.itemName.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Orders'),
        ),
        body: Column(
          children: [
            // TextField để tìm kiếm
            ...
            // ListView hiển thị danh sách đơn hàng
          ],
        ),
      ),
    );
  }
}
