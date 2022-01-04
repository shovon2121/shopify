import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {
  final String title;
  @override
  ProductDetailScreen(this.title);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text(title),
    ),);
  }
}