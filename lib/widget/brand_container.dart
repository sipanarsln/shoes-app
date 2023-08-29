import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/widget/brand_category_name.dart';

class BrandContainer extends StatelessWidget {
  BrandContainer({
    required this.brand1,
    required this.brand2,
    super.key,
  });

  String brand1;
  String brand2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyBottomLow,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: BrandCategoryName(text: brand1),
          ),
          Padding(
            padding: context.padding.onlyLeftLow,
            child: Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                border: Border.all(width: 1, color: Colors.black),
              ),
              child: BrandCategoryName(text: brand2),
            ),
          ),
        ],
      ),
    );
  }
}
