import '../models/product.dart';

class ProductService {
  static List<Product> getAllProducts() {
    return Product.products;
  }

  static List<Product> searchByName(String name) {
    return Product.products
        .where((product) =>
            product.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
  }

  static Product? findById(int id) {
    try {
      return Product.products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  static void editProduct(int id, String name, double price, int quantity) {
    Product? product = findById(id);
    if (product != null) {
      product.name = name;
      product.price = price;
      product.quantity = quantity;
    }
  }

  static Map<String, dynamic> getStatistics() {
    int totalProducts = Product.products.length;
    double totalPrice = Product.products.fold(0, (sum, p) => sum + p.price);
    double averagePrice =
        totalProducts > 0 ? totalPrice / totalProducts : 0;
    int totalQuantity =
        Product.products.fold(0, (sum, p) => sum + p.quantity);

    return {
      'total_products': totalProducts,
      'total_price': totalPrice,
      'average_price': averagePrice,
      'total_quantity': totalQuantity,
    };
  }
}
