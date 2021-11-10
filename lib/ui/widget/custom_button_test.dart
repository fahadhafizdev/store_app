import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';

class CustomButtonTest extends StatelessWidget {
  final String name;
  final Function() function;

  const CustomButtonTest({Key key, this.name, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: ElevatedButton(
        onPressed: function,
        style: btnBlackStyle,
        child: Text(
          name,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
