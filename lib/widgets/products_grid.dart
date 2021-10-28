import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import '../models/products.dart';
import '../providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsdata = Provider.of<Products>(context);
    final products = productsdata.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageurl,
      ),
      itemCount: products.length,
    );
  }
}
