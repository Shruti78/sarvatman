import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:sarvatman/models/orders.dart';

import 'package:sarvatman/screens/cart_screen.dart';
import 'package:sarvatman/screens/homescreen.dart';
import 'package:sarvatman/widgets/homebody.dart';
import 'package:sarvatman/widgets/product_list_item.dart';

import 'models/cart.dart';
import 'models/products.dart';

import 'package:provider/provider.dart';

import 'screens/prod_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Product(id: '', description: '', name: '', imgUrl: ''),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter E-commerce App',
        theme: ThemeData(
            primaryColor: Colors.teal,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
        home: HomeBody(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
