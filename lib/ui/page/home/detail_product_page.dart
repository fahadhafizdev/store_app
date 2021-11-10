import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:store_app/shared/theme.dart';
import 'package:store_app/ui/widget/custom_bottom_navbar_item.dart';
import 'package:store_app/ui/widget/custom_ulasan_widget.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 84,
          width: double.infinity,
          color: whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imgUrl: 'assets/images/icon_task.png',
                isActived: false,
              ),
              BottomNavbarItem(
                imgUrl: 'assets/images/icon_switch.png',
                isActived: false,
              ),
              BottomNavbarItem(
                imgUrl: 'assets/images/icon_home.png',
                isActived: false,
              ),
              BottomNavbarItem(
                imgUrl: 'assets/images/icon_data.png',
                isActived: false,
              ),
              BottomNavbarItem(
                imgUrl: 'assets/images/icon_account.png',
                isActived: false,
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 25,
                width: 25,
                margin: const EdgeInsets.only(right: 12),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icon_back.png'),
                  ),
                ),
              ),
            ),
            Text(
              'PRODUK DETAIL',
              style: blueTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/icon_shop.png',
              height: 25,
              width: 25,
              color: blueColor,
            ),
            const SizedBox(width: 12),
            Image.asset(
              'assets/images/icon_notification2.png',
              height: 25,
              width: 25,
              color: redColor,
            ),
          ],
        ),
      );
    }

    Widget indicators(int index) {
      return Container(
        height: 7,
        width: currentIndex == index ? 31 : 11,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: currentIndex == index ? blueColor : lightBlueColor,
          borderRadius: BorderRadius.circular(12),
        ),
      );
    }

    Widget photoSlider() {
      return Column(
        children: [
          Container(
            height: 310,
            width: 310,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/product3.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              indicators(0),
              indicators(2),
              indicators(3),
            ],
          ),
          const SizedBox(height: 24),
        ],
      );
    }

    Widget cardContent() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(80),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(
              top: 20,
              left: 36,
              right: 24,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(80),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //NOTE: HEADER CARD
                Row(
                  children: [
                    Text(
                      'Tas Guci',
                      style: blackTextStyle.copyWith(
                        color: activeColor,
                        fontWeight: bold,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: brownColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        'Barang Bekas',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: lightBlueColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        'Stok 100',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp. ',
                            decimalDigits: 0,
                          ).format(126000),
                          style: blueTextStyle.copyWith(
                              color: lightBlueColor,
                              fontSize: 18,
                              fontWeight: medium,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp. ',
                            decimalDigits: 0,
                          ).format(100500),
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: extraBold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        'Diskon 10%',
                        style: whiteTextStyle.copyWith(
                          fontWeight: extraBold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: darkGreyColor,
                  thickness: 0.2,
                ),
                const SizedBox(height: 10),
                //NOTE: VENDOR
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vendor',
                          style: blackTextStyle.copyWith(
                            color: activeColor,
                            fontWeight: semiBold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/images/photo_store.png',
                                height: 42,
                                width: 42,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Eiger Store',
                              style: blackTextStyle.copyWith(fontWeight: bold),
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/icon_star.png',
                          height: 20,
                          width: 20,
                          color: lightBlueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '3.0 ',
                          style: blueTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '| 200+ rating',
                          style: blueTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                //NOTE: DESKRIPSI
                Text(
                  'Deskripsi',
                  style: greenTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                Text(desc, style: greenTextStyle),
                const SizedBox(height: 10),
                //NOTE: ULASAN
                Text(
                  'Ulasan dan Penilaian',
                  style: greenTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                  ),
                ),
                const CustomUlasan(
                  imageUrl: 'assets/images/photo_user1.png',
                  text:
                      'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
                  name: 'Maude Hall',
                ),
                const CustomUlasan(
                  imageUrl: 'assets/images/photo_user2.png',
                  text:
                      'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
                  name: 'Ester Howard',
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return SafeArea(
        top: false,
        child: ListView(
          children: [
            header(),
            photoSlider(),
            cardContent(),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          content(),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
