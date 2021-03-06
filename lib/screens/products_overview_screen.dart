import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
class ProductOverviewScreen extends StatelessWidget {
final List<Product> loadedProducts = [
Product(
id: 'p1',
title: 'Red Shirt',
description: 'A red shirt - it is pretty red!',
price: 29.99,
imageUrl:
'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
),
  Product(
    id: 'p1',
    title: 'Red Shirt',
    description: 'A red shirt - it is pretty red!',
    price: 29.99,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
  Product(
    id: 'p1',
    title: 'Red Shirt',
    description: 'A red shirt - it is pretty red!',
    price: 29.99,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Shop"),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ), itemBuilder: (ctx,i) => ProductItem(loadedProducts[i].id, loadedProducts[i].title  , loadedProducts[i].imageUrl),
      itemCount: loadedProducts.length,
      ),
    );
  }
}
