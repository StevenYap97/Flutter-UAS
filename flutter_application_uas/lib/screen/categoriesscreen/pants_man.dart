import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct3.dart';
import 'package:from_css_color/from_css_color.dart';

class PANTS_MAN extends StatefulWidget {
  PANTS_MAN({Key? key}) : super(key: key);

  @override
  State<PANTS_MAN> createState() => _PANTS_MANState();
}

class _PANTS_MANState extends State<PANTS_MAN> {
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
                  ProductBoxFrame(
                      pict: 'assets/C11.png',
                      productname: 'Tape Black',
                      storename: 'H&M',
                      price: 99.9),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailProduct3Screen()));
                    },
                    child: ProductBoxFrame(
                        pict: 'assets/C22.png',
                        productname: 'Tape White',
                        storename: 'Adidas',
                        price: 39.8),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C33.png',
                      productname: 'Uomo shorts',
                      storename: 'Adidas',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C44.png',
                      productname: 'Simple black shorts',
                      storename: 'H&M',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C55.png',
                      productname: 'Navy training ',
                      storename: 'Adidas',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C66.png',
                      productname: 'Redefining shorts',
                      storename: 'Adidas',
                      price: 9.99),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductBoxFrame(
                      pict: 'assets/C77.png',
                      productname: 'Wortl Jeans',
                      storename: 'Nevada',
                      price: 10.2),
                  ProductBoxFrame(
                      pict: 'assets/C88.png',
                      productname: 'Casual Jeans',
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
