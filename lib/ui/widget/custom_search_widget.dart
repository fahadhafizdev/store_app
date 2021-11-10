import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 40,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(right: 5),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/icon_search.png'),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              style: blackTextStyle.copyWith(fontSize: 10),
              obscureText: false,
              decoration: InputDecoration.collapsed(
                hintText: 'Cari dengan mengetik barang',
                hintStyle: greyTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
