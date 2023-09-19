import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/product.dart';

import '../models/product_shop.dart';

class FavButton extends StatelessWidget {
  const FavButton({
    super.key,
    required this.product,
  });

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductShop>(context);

    return IconButton(
      onPressed: () {
        provider.toggleFavorite(product);
      },
      icon: provider.isExist(product)
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : const Icon(Icons.favorite_border),
    );
  }
}
