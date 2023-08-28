import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LatestShoesContainer extends StatelessWidget {
  LatestShoesContainer({
    required this.image,
    super.key,
  });

  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftLow + context.padding.onlyRightLow,
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(image),
          ),
        ),
        alignment: Alignment.topRight,
        child: Padding(
          padding: context.padding.onlyTopLow,
          child: Icon(
            Icons.favorite_border_outlined,
            size: 40,
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
