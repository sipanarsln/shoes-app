import 'package:flutter/cupertino.dart';

class BrandCategory extends StatelessWidget {
  BrandCategory({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
