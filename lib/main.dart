import 'package:flutter/material.dart';
import 'package:myshop/screens/product_detail_screnn.dart';
import '../screens/products_overview_screen.dart';
import '../screens/product_detail_screnn.dart';
import './providers/products_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        Products();
      },
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {ProductDetailScreen.routName: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}
