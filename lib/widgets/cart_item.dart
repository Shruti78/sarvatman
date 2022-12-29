import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
 
  final int quantity;
  final String name;

  CartPdt(this.id, this.productId, this.quantity, this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            // child: FittedBox(child: Text('\$$price')),
          ),
          title: Text(name),
        
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}