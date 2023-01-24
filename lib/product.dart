import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ProductState();
  }
}

class ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Products', style: TextStyle(color: Colors.white))),
      ),
      body: Text("data"),
    );
  }
}
