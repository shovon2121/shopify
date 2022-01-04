import 'package:flutter/material.dart';
import 'package:shopify/widgets/product_detail_screen.dart';
import 'product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ProductDetailScreen(title),));
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
            onPressed: (){},),
          trailing: IconButton(icon: Icon(Icons.add_shopping_cart),
            color: Theme.of(context).accentColor,
            onPressed: (){},),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
