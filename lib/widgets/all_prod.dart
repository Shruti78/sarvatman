import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarvatman/models/products.dart';
import 'package:sarvatman/widgets/pdtitem.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final productdata = Provider.of<Products>(context);
    final pdts = productdata.items;
    return GridView.builder(
        physics: const ScrollPhysics(),
        itemCount: pdts.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) => ChangeNotifierProvider.value(
            value: pdts[index],
            child: PdtItem(
              name: pdts[index].name,
              imageUrl: pdts[index].imgUrl,
            ))));
  }
}
