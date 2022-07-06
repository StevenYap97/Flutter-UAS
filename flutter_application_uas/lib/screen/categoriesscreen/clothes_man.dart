import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct2.dart';
import 'package:from_css_color/from_css_color.dart';

class CLOTHES_MAN extends StatefulWidget {
  CLOTHES_MAN({Key? key}) : super(key: key);

  @override
  State<CLOTHES_MAN> createState() => _CLOTHES_MANState();
}

class _CLOTHES_MANState extends State<CLOTHES_MAN> {
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
                              builder: (context) => DetailProduct2Screen()));
                    },
                    child: ProductBoxFrame(
                        pict: 'assets/F1.png',
                        productname: 'THRASHER t-shirt',
                        storename: 'H&M',
                        price: 23.9),
                  ),
                  ProductBoxFrame(
                      pict: 'assets/F2.png',
                      productname: 'Casual white mode',
                      storename: 'H&M',
                      price: 5.8),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/F3.png',
                      productname: 'Yellow Trefoil',
                      storename: 'Adidas',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/F4.png',
                      productname: 'Maroon-v',
                      storename: 'H&M',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/F5.png',
                      productname: 'Plaid Overshirt',
                      storename: 'H&M',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/F6.png',
                      productname: 'Monver shirt',
                      storename: 'Adidas',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/F7.png',
                      productname: 'Dark Blue shirt',
                      storename: 'Adidas',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/F8.png',
                      productname: 'Black Boioutwear',
                      storename: 'H&M',
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
