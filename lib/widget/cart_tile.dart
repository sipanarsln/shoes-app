import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              product.image,
              width: 140,
            ),
            Padding(
              padding: context.padding.onlyLeftLow +
                  context.padding.onlyBottomMedium,
              child: Column(
                children: [
                  Text(
                    product.brandName,
                    style: GoogleFonts.outfit(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.productName,
                    style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: context.padding.onlyLeftMedium,
              child: const Icon(
                Icons.delete_forever_rounded,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
