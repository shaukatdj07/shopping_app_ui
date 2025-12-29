import 'package:flutter/material.dart';
import 'package:practice/shopping_app/screens/product_view.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.70,
         physics: NeverScrollableScrollPhysics(),
        children: [
          for(int i = 1; i <8; i++)
          Container(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.favorite_outline, color: Colors.red,)
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView()));
                  },
                  child: Container(
                      margin:EdgeInsets.all(10),
                      child: Image.asset('assets/$i.png',height: 100, width: 100,)),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Product Title',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C54A5)),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Write description of product',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4C54A5)),
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$40",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C54A5)),
                    ),
                    Icon(Icons.add_shopping_cart, color: Color(0xff4C53A5),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
