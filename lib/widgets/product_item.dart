import 'package:flutter/material.dart';
import '../screens/product_detail_screnn.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;

  ProductItem(this.id, this.title, this.imageurl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            imageurl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routName,
              arguments: id,
            );
          },
        ),
        footer: GridTileBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
