import 'package:flutter/material.dart';
import 'package:store_app/ui/page/home/detail_product_page.dart';
import 'package:store_app/ui/page/home/home_page.dart';
import 'package:store_app/ui/page/home/transaction_page.dart';
import 'package:store_app/ui/page/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/test-page': (context) => const TestPage(),
        '/home': (context) => const HomePage(),
        '/detail-product': (context) => const DetailProductPage(),
        '/transaction-page': (context) => const TransactionPage(),
      },
      initialRoute: '/test-page',
    );
  }
}
