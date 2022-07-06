import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct4.dart';
import 'package:from_css_color/from_css_color.dart';

class CLOTHES_WOMAN extends StatefulWidget {
  CLOTHES_WOMAN({Key? key}) : super(key: key);

  @override
  State<CLOTHES_WOMAN> createState() => _CLOTHES_WOMANState();
}

class _CLOTHES_WOMANState extends State<CLOTHES_WOMAN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: fromCssColor('#939A79'),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 450,
          height: 30,
          color: Colors.white,
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search",
            ),
          ),
        ),
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
                              builder: (context) => DetailProduct4Screen()));
                    },
                    child: ProductBoxFrame(
                        pict: 'assets/G1.png',
                        productname: 'Blink Jacket',
                        storename: 'H&M',
                        price: 99.9),
                  ),
                  ProductBoxFrame(
                      pict: 'assets/G2.png',
                      productname: ' Checkered Jackett',
                      storename: 'H&M',
                      price: 5.8),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/G3.png',
                      productname: 'Crige brown hoodie',
                      storename: 'Adidas',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/G4.png',
                      productname: 'Crop white',
                      storename: 'H&M',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/G5.png',
                      productname: 'Snow Jacket',
                      storename: 'Uniqlo',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/G6.png',
                      productname: 'Takip Edin Alin',
                      storename: 'H&M',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/G7.png',
                      productname: 'Denim Jacket',
                      storename: 'Levi’s',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/G8.png',
                      productname: 'Fantacy Checkered',
                      storename: 'Nevada',
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
