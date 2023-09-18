import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/models/product_shop.dart';
import 'package:shoes_app/widget/cart_tile.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductShop>(
      builder: (context, value, child) => SafeArea(
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                  Product eachProduct = value.userCart[index];
                  return CartTile(
                    product: eachProduct,
                  );
                }),
          )
        ]),
      ),
    );
  }
}
