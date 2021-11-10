import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:store_app/shared/theme.dart';

class CustomProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int price;
  final int discountPrice;
  final int discount;
  final double rating;
  final Color setColor;
  final bool isColorOpacity;

  const CustomProductItem({
    Key key,
    this.discount = 0,
    this.discountPrice,
    this.imageUrl,
    this.name,
    this.price,
    this.rating,
    this.setColor = const Color(0xffC4C4C4),
    this.isColorOpacity = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NOTE: PHOTO
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: isColorOpacity ? setColor.withOpacity(0.3) : setColor,
              borderRadius: BorderRadius.circular(12),
            ),
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
                //NOTE:RATING
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 3,
                    ),
                    height: 20,
                    width: 85,
                    decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 9,
                          width: 9,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/icon_star.png'),
                            ),
                          ),
                        ),
                        Text(
                          '$rating ',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 8,
                          ),
                        ),
                        Text(
                          '| 200+ rating',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                  ).format(price),
                  style: blueTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
                height: 18,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Expanded(
                  child: Text(
                    'Diskon $discount%',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            NumberFormat.currency(
              locale: 'id',
              symbol: 'Rp. ',
              decimalDigits: 0,
            ).format(discountPrice),
            style: blueTextStyle.copyWith(
              fontSize: 12,
              fontWeight: extraBold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
