import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct1.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct2.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct3.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct4.dart';

class HomeCards extends StatefulWidget {
  HomeCards({Key? key}) : super(key: key);

  @override
  State<HomeCards> createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  dynamic _val;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct1Screen()));
                },
                child: ProductBoxFrame(
                    pict: 'assets/C1.png',
                    productname: 'Mafia Babictor',
                    storename: 'H&M',
                    price: 23.9),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct2Screen()));
                },
                child: ProductBoxFrame(
                    pict: 'assets/F1.png',
                    productname: 'THRASHER T-Shirt',
                    storename: 'H&M',
                    price: 23.9),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct3Screen()));
                },
                child: _val = ProductBoxFrame(
                    pict: 'assets/C22.png',
                    productname: 'Tape White',
                    storename: 'Adidas',
                    price: 39.8),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct4Screen()));
                },
                child: ProductBoxFrame(
                    pict: 'assets/G1.png',
                    productname: 'Blink Jacket',
                    storename: 'H&M',
                    price: 99.9),
              )
            ],
          )
        ],
      ),
    );
  }
}
