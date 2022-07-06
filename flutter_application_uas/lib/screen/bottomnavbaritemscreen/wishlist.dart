import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/wishlistcard.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct1.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct2.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct3.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct4.dart';
import 'package:from_css_color/from_css_color.dart';

class WishlistScreen extends StatefulWidget {
  WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: fromCssColor('#939A79'),
        title: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 300,
            height: 40,
            color: Colors.white,
            child: Theme(
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.amber,
                    border: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: Colors.green[900],
                        )))),
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
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
                    child: WishlistBoxFrame(
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
                    child: WishlistBoxFrame(
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
                    child: WishlistBoxFrame(
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
                    child: WishlistBoxFrame(
                        pict: 'assets/G1.png',
                        productname: 'Blink Jacket',
                        storename: 'H&M',
                        price: 99.9),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
