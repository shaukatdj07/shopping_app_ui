import 'package:flutter/material.dart';
import 'package:practice/shopping_app/widgets/cart_app_bar.dart';
import 'package:practice/shopping_app/widgets/cart_items.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            //Adjust with your req
            height: 700,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xffEDECF2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
