import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:practice/shopping_app/screens/cart_view.dart';

class HomeViewBar extends StatelessWidget {
  const HomeViewBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'DJ Shop',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4C53A5)),
            ),
          ),
          Spacer(),
          Badge(
            badgeStyle: BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(5)
            ),
            badgeContent: Text(
              '5',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartView()));
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xff4C54A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
