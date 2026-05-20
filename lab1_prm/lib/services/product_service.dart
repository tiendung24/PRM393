import '../models/product.dart';

class ProductService {
  static List<Product> getAllProducts() {
    return Product.products;
  }
}
