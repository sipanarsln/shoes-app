import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/pages/detail_page.dart';

// ignore: must_be_immutable
class LatestShoesContainer extends StatefulWidget {
  final Product product;
  void Function()? onTap;

  LatestShoesContainer({required this.product, super.key, required this.onTap});

  @override
  State<LatestShoesContainer> createState() => _LatestShoesContainerState();
}

class _LatestShoesContainerState extends State<LatestShoesContainer> {
  Color _iconColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(widget.product)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          image: DecorationImage(
            image: AssetImage(widget.product.image),
          ),
        ),
        alignment: Alignment.topRight,
        child: Padding(
          padding: context.padding.onlyTopLow,
          child: IconButton(
            onPressed: () {
              setState(
                () {
                  if (_iconColor == Colors.blueGrey) {
                    _iconColor = Colors.red;
                  } else {
                    _iconColor = Colors.blueGrey;
                  }
                },
              );
            },
            icon: Icon(
              Icons.favorite_outlined,
              color: _iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
