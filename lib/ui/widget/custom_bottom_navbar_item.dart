import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';

// ignore: must_be_immutable
class BottomNavbarItem extends StatelessWidget {
  final String imgUrl;
  bool isActived;

  BottomNavbarItem({
    Key key,
    this.imgUrl,
    this.isActived = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      height: 24,
      width: 24,
      color: isActived ? activeColor : nonActiveColor,
    );
  }
}
