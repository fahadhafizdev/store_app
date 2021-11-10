import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  final String imageUrl;

  const CustomBanner({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
