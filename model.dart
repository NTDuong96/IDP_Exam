class Order {
  final String item;
  final String itemName; 
  final double price;
  final String currency;
  final int quantity;

  Order({
    required this.item,
    required this.itemName,
    required this.price, 
    required this.currency,
    required this.quantity,
  });
}
