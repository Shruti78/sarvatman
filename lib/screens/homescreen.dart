import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text('Bid on buy'),
        actions: <Widget>[
          IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      // ignore: prefer_const_constructors
      body: HomeScreen(),
    );
  }
}
