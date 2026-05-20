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
}
