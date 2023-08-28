import 'package:flutter/material.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/models/product.dart';

class ProductShop extends ChangeNotifier {
  final List<Product> _product = [
    Product(
        image: "assets/products/Nike-Shoe1.png",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandName: StringConstants.categoryNike,
        productName: "Yung - I"),
  ];

  final List<Product> _userCart = [];

  List<Product> get productShop => _product;

  List<Product> get userCart => _userCart;

  void addItemToCart(Product product) {
    _userCart.add(product);
    notifyListeners();
  }

  void removeItemFromCart(Product product) {
    _userCart.remove(product);
    notifyListeners();
  }
}
