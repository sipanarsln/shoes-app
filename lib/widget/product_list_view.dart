import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';

// ignore: must_be_immutable, camel_case_types
class productListView extends StatelessWidget {
  productListView({super.key, required this.product, required this.onTap});

  Product product;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: context.padding.onlyLeftLow,
        child: Stack(
          children: [
            Container(
              height: 133,
              width: 303,
              decoration: const BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),
            Positioned(
              left: 115,
              top: -20,
              child: Image.asset(
                product.image,
                height: 180,
              ),
            ),
            Positioned(
              top: 20,
              left: 30,
              child: Column(
                children: [
                  Text(
                    product.brandName,
                    textAlign: TextAlign.start,
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
                  Text(
                    product.price,
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
