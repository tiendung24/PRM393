class Product {
  late int id;
  late String name;
  late double price;
  late int quantity;

  static List<Product> products = [];

  static void addProduct(int id, String name, double price, int quantity) {
    Product product = Product();
    product.id = id;
    product.name = name;
    product.price = price;
    product.quantity = quantity;
    products.add(product);
  }

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }
}
