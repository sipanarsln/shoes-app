import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/models/product.dart';

class LatestShoesContainer extends StatefulWidget {
  LatestShoesContainer({
    required this.product,
    super.key,
  });

  Product product;

  @override
  State<LatestShoesContainer> createState() => _LatestShoesContainerState();
}

Color _iconColor = Colors.grey;
bool click = true;

class _LatestShoesContainerState extends State<LatestShoesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
