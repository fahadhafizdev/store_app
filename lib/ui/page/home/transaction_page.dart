import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:store_app/shared/theme.dart';
import 'package:store_app/ui/widget/custom_arrow_card.dart';
import 'package:store_app/ui/widget/custom_bottom_navbar_item.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isDeleted = false;
  bool isNoted = false;
  int qty = 0;

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
              'Checkout',
              style: blueTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
    }

    Widget itemCards() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: lightColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(5),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: lightColor.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/product6.png',
                height: 70,
                width: 70,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tas Gucci',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                  ).format(75000),
                  style: blueTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (qty == 0) {
                              // ignore: avoid_print
                              print('min');
                            } else {
                              qty--;
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/images/icon_min.png',
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$qty',
                        style: whiteTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 12),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            qty++;
                          });
                        },
                        child: Image.asset(
                          'assets/images/icon_plus.png',
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // ignore: avoid_print
                      print(isNoted);
                      isNoted = !isNoted;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: lightBlueColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon_pencil.png',
                          height: 15,
                          width: 15,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Catatan',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget itemCardsDesc() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                'Catatan Item',
                style: lightTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: lightColor,
                  width: 0.7,
                ),
              ),
              child: TextFormField(
                style: blackTextStyle.copyWith(fontSize: 12),
                obscureText: false,
                maxLines: 3,
                decoration: InputDecoration.collapsed(
                  hintText: 'Ketik disini ....',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget itemCardsCollapse() {
      return Column(
        children: [
          itemCards(),
          isNoted ? itemCardsDesc() : const SizedBox(),
        ],
      );
    }

    Widget detailTransaction() {
      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: DETAIL PEMBAYARAN
            Text(
              'Detail Pembayaran',
              style: blackTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tas Gucci',
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '(Qty. 1)',
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                  ).format(75000),
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongkos Kirim',
                  style: blackTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                  ).format(10000),
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                color: darkGreyColor,
                thickness: 0.2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                  ).format(85000),
                  style: blackTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const CustomArrowContainer(name: 'Waktu Pengantaran'),
            const CustomArrowContainer(name: 'Alamat Pengiriman'),
            Container(
              margin: const EdgeInsets.only(top: 24),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                textAlign: TextAlign.center,
                style: greenTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonPay() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 24,
          bottom: 100,
        ),
        height: 60,
        child: ElevatedButton(
          style: btnBlueStyle,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Transaksi Berhasil',
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
                backgroundColor: blueColor,
                duration: const Duration(seconds: 1),
              ),
            );
          },
          child: Text(
            'Bayar Sekarang',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return SafeArea(
        top: false,
        child: ListView(
          children: [
            header(),
            itemCardsCollapse(),
            detailTransaction(),
            buttonPay(),
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
