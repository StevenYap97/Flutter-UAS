import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct1.dart';

import 'package:from_css_color/from_css_color.dart';

class PANTS_WOMAN extends StatefulWidget {
  PANTS_WOMAN({Key? key}) : super(key: key);

  @override
  State<PANTS_WOMAN> createState() => _PANTS_WOMANState();
}

class _PANTS_WOMANState extends State<PANTS_WOMAN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      appBar: AppBar(
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
                    child: ProductBoxFrame(
                        pict: 'assets/C1.png',
                        productname: 'Mafia babictor',
                        storename: 'H&M',
                        price: 99.9),
                  ),
                  ProductBoxFrame(
                      pict: 'assets/C2.png',
                      productname: 'Denim shorts',
                      storename: 'H&M',
                      price: 39.8),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C3.png',
                      productname: 'Sweet shorts',
                      storename: 'H&M',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C4.png',
                      productname: 'Luxury shorts',
                      storename: 'Gucci',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C5.png',
                      productname: 'Luxury shorts',
                      storename: 'Gucci',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C6.png',
                      productname: 'Cuties Cotton',
                      storename: 'Gucci',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C7.png',
                      productname: 'Navy breeches',
                      storename: 'Gucci',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C8.png',
                      productname: 'Borwn breeches',
                      storename: 'Gucci',
                      price: 9.99),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
