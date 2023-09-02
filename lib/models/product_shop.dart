import 'package:flutter/material.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/models/product.dart';

class ProductShop extends ChangeNotifier {
  final List<Product> _product = [
    Product(
        brandName: StringConstants.categoryNike,
        image: "assets/products/nike_shoes1.png",
        productName: "Yellow Shoes",
        price: '€ 128.99',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/nike_logo.png"),
    Product(
        brandName: StringConstants.categoryNike,
        image: "assets/products/nike_shoes2.png",
        productName: "White Shoes",
        price: '€ 320.40',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/nike_logo.png"),
    Product(
        brandName: StringConstants.categoryAdidas,
        image: "assets/products/adidas_shoes1.png",
        productName: "Red-Green Shoes",
        price: '€ 126.99',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/adidas_logo.png"),
    Product(
      brandName: StringConstants.categoryAdidas,
      image: "assets/products/adidas_shoes2.png",
      productName: "Black Shoes",
      price: '€ 146.84',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      brandImage: "assets/logos/adidas_logo.png",
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
