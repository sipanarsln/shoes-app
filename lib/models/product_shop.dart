import 'package:flutter/material.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/models/product.dart';

class ProductShop extends ChangeNotifier {
  final List<Product> _product = [
    Product(
      brandName: StringConstants.categoryNike,
      image: "assets/products/Nike-Shoe1.png",
      productName: "Yung - I",
      price: '€ 128.99',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      brandName: StringConstants.categoryNike,
      image: "assets/products/Nike-Shoe2.png",
      productName: "Yeezy Boots",
      price: '€ 320.40',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      brandName: StringConstants.categoryNike,
      image: "assets/products/Nike-Shoe3.png",
      productName: "Air Presto",
      price: '€ 126.99',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
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
