import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';

class CustomArrowContainer extends StatelessWidget {
  final String name;

  const CustomArrowContainer({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          Image.asset(
            'assets/images/icon_arrow.png',
            height: 15,
            width: 15,
          ),
        ],
      ),
    );
  }
}
