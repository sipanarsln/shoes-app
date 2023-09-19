import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/widget/cart_tile.dart';
import 'package:shoes_app/widget/fav_tile.dart';
import '../models/product_shop.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductShop>(
      builder: (context, value, child) => SafeArea(
          child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: value.favProduct.length,
            itemBuilder: (context, index) {
              Product eachProduct = value.favProduct[index];
              return FavTile(product: eachProduct);
            },
          ))
        ],
      )),
    );
  }
}
