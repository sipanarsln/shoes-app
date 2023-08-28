import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BrandCategory extends StatelessWidget {
  BrandCategory({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
