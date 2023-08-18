import 'package:flutter/material.dart';
import 'package:shoes_app/constants/string_constants.dart';

class seeAll extends StatelessWidget {
  const seeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: const Text(StringConstants.seeAll,
          style: TextStyle(color: Colors.white)),
    );
  }
}
