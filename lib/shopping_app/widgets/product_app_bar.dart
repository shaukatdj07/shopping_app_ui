import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff4C53A5),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Product',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4C53A5)),
            ),
          ),
          Spacer(),
          Icon(Icons.favorite,size: 30, color: Colors.red,)
        ],
      ),
    );
  }
}
