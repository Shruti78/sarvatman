import 'package:flutter/material.dart';
import 'package:sarvatman/widgets/all_prod.dart';
import 'package:sarvatman/widgets/category.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Category(),
        Center(
            child: Text(
          'Products',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        AllProducts()
      ],
    );
  }
}