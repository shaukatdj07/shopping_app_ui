import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/shopping_app/widgets/product_app_bar.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductAppBar(),
          //for(int i= 1; i<8; i++)
          Padding(
            padding: EdgeInsets.all(16),
            //Adjust height according to you req
            child: Image.asset('assets/1.png', height: 300),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Title',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4C53A5)),
                ),
                //Adjust it
                SizedBox(height: 20),
                Row(
                  children: [
                    for(int i =1; i<5; i++)
                    Icon(
                      Icons.favorite,
                      color: Color(0xff4C53A5),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(.5))
                        ],
                      ),
                      child: Icon(CupertinoIcons.plus,
                          size: 18, color: Color(0xFF4C53A5)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '01',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFF4C53A5)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(.5))
                        ],
                      ),
                      child: Icon(CupertinoIcons.minus,
                          size: 18, color: Color(0xFF4C53A5)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'This is more detailed description of the product.You can write here more about the product. Lengthy description',
                  style: TextStyle(fontSize: 14, color: Color(0xff4C53A5)),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4C53A5)),
                    ),
                    for(int i = 5; i< 10; i++)
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(.5)
                          )
                        ]
                      ),
                      child: Text(
                        '$i',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFF4C53A5)),
                      ),
                    ),
                  ],
                ),
                Text('color')
              ],
            ),
          )
        ],
      ),
    );
  }
}
