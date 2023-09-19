import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/widget/favbutton.dart';

class FavTile extends StatelessWidget {
  const FavTile({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Stack(
        children: [
          Positioned(
            right: 15,
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(product.image),
                ),
              ),
            ),
          ),
          Positioned(
            right: 150,
            child: Text(
              product.brandName,
              style: GoogleFonts.outfit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 125,
            child: Text(
              product.productName,
              style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Positioned(
            top: 75,
            right: 130,
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  product.price,
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(top: 35, right: 10, child: FavButton(product: product))
        ],
      ),
    );

    // Padding(
    //   padding: context.padding.low,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Row(
    //         children: [
    //           Container(
    //             height: 120,
    //             width: 120,
    //             decoration: BoxDecoration(
    //               border: Border.all(color: Colors.grey),
    //               borderRadius: BorderRadius.circular(20),
    //               image: DecorationImage(
    //                 image: AssetImage(product.image),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             width: 250,
    //             height: 120,
    //             decoration: BoxDecoration(
    //                 color: Colors.red, borderRadius: BorderRadius.circular(20)),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
