import 'package:flutter/material.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/models/product.dart';

class ProductShop extends ChangeNotifier {
  final List<Product> _product = [
    Product(
        brandName: StringConstants.categoryNike,
        image: "assets/products/nike_shoes1.png",
        productName: StringConstants.nikeYellow,
        price: '€ 128.99',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/nike_logo.png"),
    Product(
        brandName: StringConstants.categoryNike,
        image: "assets/products/nike_shoes2.png",
        productName: StringConstants.nikeWhite,
        price: '€ 320.40',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/nike_logo.png"),
    Product(
        brandName: StringConstants.categoryAdidas,
        image: "assets/products/adidas_shoes1.png",
        productName: StringConstants.adidasRed,
        price: '€ 126.99',
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        brandImage: "assets/logos/adidas_logo.png"),
    Product(
      brandName: StringConstants.categoryAdidas,
      image: "assets/products/adidas_shoes2.png",
      productName: StringConstants.adidasBlack,
      price: '€ 146.84',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      brandImage: "assets/logos/adidas_logo.png",
    ),
  ];

  final List<Product> _userCart = [];
  final List<Product> _favProduct = [];

  List<Product> get productShop => _product;

  List<Product> get userCart => _userCart;
  List<Product> get favProduct => _favProduct;

  void addItemToCart(Product product) {
    _userCart.add(product);
    notifyListeners();
  }

  void removeItemFromCart(Product product) {
    _userCart.remove(product);
    notifyListeners();
  }

  void toggleFavorite(Product product) {
    final isExist = _favProduct.contains(product);

    if (isExist) {
      _favProduct.remove(product);
    } else {
      _favProduct.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product) {
    final isExist = _favProduct.contains(product);
    return isExist;
  }
}
