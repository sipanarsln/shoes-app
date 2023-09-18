import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/models/product_shop.dart';
import 'package:shoes_app/pages/detail_page.dart';
import 'package:shoes_app/widget/brand_container.dart';
import 'package:shoes_app/widget/category.dart';
import 'package:shoes_app/widget/latest_shoes_container.dart';
import '../widget/product_list_view.dart';
import '../widget/see_all.dart';
import '../widget/text/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductShop>(
      builder: (context, value, child) => ListView(
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
                Column(
                  children: [
                    BrandContainer(
                      brand1: StringConstants.categoryAdidas,
                      brand2: StringConstants.categoryPuma,
                    ),
                    BrandContainer(
                      brand1: StringConstants.categoryNike,
                      brand2: StringConstants.categoryCrocs,
                    ),
                    BrandContainer(
                      brand1: StringConstants.categorySkechers,
                      brand2: StringConstants.categoryReebok,
                    )
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
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: ProductShop().productShop.length,
                    itemBuilder: (context, index) {
                      Product eachProduct = value.productShop[index];
                      return productListView(
                        product: eachProduct,
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(text: "Latest Shoes"),
                    const seeAll(),
                  ],
                ),
                const SizedBox(height: 20),

                SizedBox(
                  height: 400,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: ProductShop().productShop.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15, //yatay aralık
                      mainAxisSpacing: 20, // dikey aralık
                      mainAxisExtent: 220, //uzunluk ayarlama
                      crossAxisCount: 2, //aynı sırada kaç ürün listeleme
                    ),
                    itemBuilder: (context, index) {
                      Product eachProduct = value.productShop[index];
                      return LatestShoesContainer(
                        product: eachProduct,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(eachProduct),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                // const SizedBox(height: 20),
                // SizedBox(
                //   height: 160,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       productListView(
                //           title: StringConstants.categoryNike,
                //           image: "assets/products/Nike-Shoe1.png",
                //           subTitle: "Yung - I",
                //           price: "€ 128.99"),
                //       productListView(
                //           title: StringConstants.categoryNike,
                //           image: "assets/products/Nike-Shoe2.png",
                //           subTitle: "Yeezy Boost",
                //           price: "€ 320.40"),
                //       productListView(
                //           title: StringConstants.categoryNike,
                //           image: "assets/products/Nike-Shoe3.png",
                //           subTitle: "Air Presto",
                //           price: "€ 126.99"),
                //     ],
                //   ),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     TitleText(text: "Latest Shoes"),
                //     const seeAll(),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     LatestShoesContainer(image: "assets/products/Nike-Shoe2.png"),
                //     LatestShoesContainer(image: "assets/products/Nike-Shoe3.png"),
                //   ],
                // ),
              ],
            ),
          )
        ],
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
