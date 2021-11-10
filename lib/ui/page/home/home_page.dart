import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';
import 'package:store_app/ui/widget/custom_banner.dart';
import 'package:store_app/ui/widget/custom_bottom_navbar_item.dart';
import 'package:store_app/ui/widget/custom_item_product.dart';
import 'package:store_app/ui/widget/custom_search_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List images = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                isActived: true,
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
        padding: const EdgeInsets.only(top: 24),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            //NOTE: SEARCH CONTAINER
            const Expanded(child: CustomSearchBar()),
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                'assets/images/icon_setting.png',
                height: 10,
                width: 10,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: brownColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                'assets/images/icon_shop.png',
                height: 10,
                width: 10,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                'assets/images/icon_notification.png',
                height: 10,
                width: 10,
                fit: BoxFit.contain,
              ),
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

    Widget listContent() {
      int index = -1;

      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        padding: const EdgeInsets.only(bottom: 200),
        child: Column(
          children: [
            CarouselSlider(
              items: images
                  .map(
                    (e) => CustomBanner(imageUrl: e),
                  )
                  .toList(),
              options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    // ignore: avoid_print
                    print('$reason : $currentIndex');
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                // ignore: avoid_print
                print(index);
                index++;
                return indicators(index);
              }).toList(),
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                Expanded(
                  child: CustomProductItem(
                    name: 'Speaker HP 2.0',
                    discount: 10,
                    discountPrice: 50000,
                    price: 180000,
                    imageUrl: 'assets/images/product1.png',
                    rating: 5.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomProductItem(
                    name: 'Speaker bluetooth hp',
                    discount: 20,
                    discountPrice: 80000,
                    price: 200000,
                    imageUrl: 'assets/images/product2.png',
                    rating: 3.0,
                    setColor: Color(0xff3C7DD9),
                    isColorOpacity: false,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: CustomProductItem(
                    name: 'SmartPhone Vivo s12',
                    discount: 10,
                    discountPrice: 1000000,
                    price: 1800000,
                    imageUrl: 'assets/images/product3.png',
                    rating: 5.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomProductItem(
                    name: 'Xiaomi gts500 S2+',
                    discount: 40,
                    discountPrice: 5000000,
                    price: 9000000,
                    imageUrl: 'assets/images/product4.png',
                    rating: 9.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: CustomProductItem(
                    name: 'Tas Hiking Yellow',
                    discount: 10,
                    discountPrice: 90000,
                    price: 170000,
                    imageUrl: 'assets/images/product5.png',
                    rating: 5.0,
                    setColor: Color(0xffF8CA44),
                    isColorOpacity: false,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomProductItem(
                    name: 'Tas Sekolah Smudge',
                    discount: 20,
                    discountPrice: 330000,
                    price: 160000,
                    imageUrl: 'assets/images/product6.png',
                    rating: 3.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: CustomProductItem(
                    name: 'Tas Variasi Leci Red',
                    discount: 10,
                    discountPrice: 220000,
                    price: 110000,
                    imageUrl: 'assets/images/product7.png',
                    rating: 5.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomProductItem(
                    name: 'Yellow Bag Custom',
                    discount: 20,
                    discountPrice: 50000,
                    price: 122000,
                    imageUrl: 'assets/images/product8.png',
                    rating: 3.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return SafeArea(
        top: false,
        child: ListView(
          children: [
            header(),
            listContent(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          content(),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
