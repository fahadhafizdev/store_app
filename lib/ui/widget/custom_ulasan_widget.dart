import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';

class CustomUlasan extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;

  const CustomUlasan({
    Key key,
    this.imageUrl,
    this.name,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.only(
        top: 20,
        left: 12,
        right: 12,
        bottom: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: lightColor.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    '14 min',
                    style: lightTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                'assets/images/icon_star.png',
                height: 18,
                width: 18,
                color: const Color(0xffFA4A0C),
              ),
              const SizedBox(width: 10),
              Text(
                '5.0',
                style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
          )
        ],
      ),
    );
  }
}
