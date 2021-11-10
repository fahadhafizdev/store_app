import 'package:flutter/material.dart';
import 'package:store_app/shared/theme.dart';
import 'package:store_app/ui/widget/custom_button_test.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Text(
              'Made by',
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text(
              'Fahad Hafizudin Dayana',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 40),
            CustomButtonTest(
              name: 'Test 1',
              function: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            CustomButtonTest(
              name: 'Test 2',
              function: () {
                Navigator.pushNamed(context, '/detail-product');
              },
            ),
            CustomButtonTest(
              name: 'Test 3',
              function: () {
                Navigator.pushNamed(context, '/transaction-page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
