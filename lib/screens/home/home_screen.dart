import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/widget/brand_category.dart';
import 'package:shoes_app/widget/category.dart';
import 'package:shoes_app/widget/see_all.dart';
import 'package:shoes_app/widget/text/title_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.padding.low,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
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
                  child: BrandCategory(text: StringConstants.categorySkechers),
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
                    child: BrandCategory(text: StringConstants.categoryReebok),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleText(text: "What's Popular"),
                const seeAll(),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  height: 143,
                  width: 303,
                  decoration: BoxDecoration(
                      color: const Color(0xffEFEFEF),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const Positioned(top: 20, child: Text("data"))
              ],
            ),
          ],
        ),
      ),
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
