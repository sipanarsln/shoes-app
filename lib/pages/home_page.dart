import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/widget/category.dart';

import '../widget/brand_category.dart';
import '../widget/product_list_view.dart';
import '../widget/see_all.dart';
import '../widget/text/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: context.padding.low,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleText(text: StringConstants.category),
                ],
              ),
              const SizedBox(height: 20),
              const categoryList(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(text: StringConstants.selectBrand),
                  const seeAll(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: BrandCategory(text: StringConstants.categoryAdidas),
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
                      child: BrandCategory(text: StringConstants.categoryPuma),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: BrandCategory(text: StringConstants.categoryNike),
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
                      child: BrandCategory(text: StringConstants.categoryCrocs),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child:
                        BrandCategory(text: StringConstants.categorySkechers),
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
                      child:
                          BrandCategory(text: StringConstants.categoryReebok),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(text: "What's Popular"),
                  const seeAll(),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    productListView(
                        title: StringConstants.categoryNike,
                        image: "assets/products/Nike-Shoe1.png",
                        subTitle: "Yung - I",
                        price: "€ 128.99"),
                    productListView(
                        title: StringConstants.categoryNike,
                        image: "assets/products/Nike-Shoe2.png",
                        subTitle: "Yeezy Boost",
                        price: "€ 320.40"),
                    productListView(
                        title: StringConstants.categoryNike,
                        image: "assets/products/Nike-Shoe3.png",
                        subTitle: "Air Presto",
                        price: "€ 126.99"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(text: "Latest Shoes"),
                  const seeAll(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class categoryList extends StatelessWidget {
  const categoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          100, // İçeriği yatayda kaydırmak için yeterli bir yükseklik belirleyin
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image: "assets/logos/women-logo.png",
            text: StringConstants.categoryWomen,
          ),
          const SizedBox(width: 10),
          Category(
            image: "assets/logos/men-logo.png",
            text: StringConstants.categoryMen,
          ),
          const SizedBox(width: 10),
          Category(
            image: "assets/logos/children-logo.png",
            text: StringConstants.categoryChildren,
          ),
        ],
      ),
    );
  }
}
