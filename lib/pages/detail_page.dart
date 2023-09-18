import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/models/product_shop.dart';
import 'package:shoes_app/widget/text/title_text.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage(this.product, {super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

void addToCart(BuildContext context, Product product) {
  Provider.of<ProductShop>(context, listen: false).addItemToCart(product);
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.brandName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        actions: [
          Padding(
            padding: context.padding.onlyRightLow,
            child: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: TitleText(
              text: 'Size',
            ),
          ),
          Positioned(
            top: 70,
            left: 10,
            child: Container(
              height: 55,
              width: 45,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffE9CB63),
                    Color(0xffC5FF7B),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text("39"),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 180,
            child: Image.asset(widget.product.brandImage),
          ),
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/Ellipse-yellow.png",
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Image.asset(
              widget.product.image,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 250,
            left: 20,
            child: TitleText(text: widget.product.price),
          ),
          Positioned(
            bottom: 245,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xffC5FF7B)),
              onPressed: () {},
              child: const Text(
                "In stock",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            height: 100,
            width: 400,
            left: 20,
            bottom: 110,
            child: Text(widget.product.description),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                addToCart(context, widget.product);
              },
              child: const Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
