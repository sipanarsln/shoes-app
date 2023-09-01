import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/pages/detail_page.dart';

// ignore: must_be_immutable
class LatestShoesContainer extends StatelessWidget {
  final Product product;
  void Function()? onTap;

  LatestShoesContainer({required this.product, super.key, required this.onTap});

  Color _iconColor = Colors.grey;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(product)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          image: DecorationImage(
            image: AssetImage(product.image),
          ),
        ),
        alignment: Alignment.topRight,
        child: Padding(
          padding: context.padding.onlyTopLow,
          child: IconButton(
            onPressed: () {
              if (click == false) {
                _iconColor = Colors.grey;
              } else {
                _iconColor = Colors.red;
              }
            },
            icon: Icon(
              (click == true) ? Icons.favorite_border : Icons.favorite_outlined,
              color: _iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
