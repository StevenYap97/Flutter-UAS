import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_uas/provider/cartprovider.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:intl/intl.dart';

class ShoppingCartFill extends StatefulWidget {
  ShoppingCartFill({Key? key}) : super(key: key);

  @override
  State<ShoppingCartFill> createState() => _ShoppingCartFillState();
}

class _ShoppingCartFillState extends State<ShoppingCartFill> {
  int simpleIntInput = 1;

  var f = NumberFormat("##.0#", "en_US");
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Cartprovider>(context);

    return ListView(
      shrinkWrap: true,
      children: List.generate(prov.ListKeranjang.length, (i) {
        num harga = prov.ListKeranjang[i]["Harga"];
        num totalbeli = 0;
        prov.ListKeranjang[i]["Jumlah"] = simpleIntInput;
        prov.ListKeranjang[i]["Total"] = simpleIntInput * harga;

        return Container(
          padding: EdgeInsets.all(20),
          height: 240,
          width: 240,
          child: Row(
            children: [
              ProductBoxFrame(
                  pict: prov.ListKeranjang[i]["Gambar"],
                  productname: prov.ListKeranjang[i]["Nama"],
                  storename: prov.ListKeranjang[i]["Toko"],
                  price: 20),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Size  :  '),
                        Text(prov.ListKeranjang[i]["Ukuran"].toString()),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                prov.ListKeranjang.removeAt(i);
                              });
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                    Column(
                      children: [
                        Text('Qty  : '),
                        Container(
                          height: 50,
                          child: QuantityInput(
                            buttonColor: fromCssColor('#939A79'),
                            value: simpleIntInput,
                            onChanged: (value) => setState(() {
                              simpleIntInput =
                                  int.parse(value.replaceAll(',', ''));
                              prov.ListKeranjang[i]["Jumlah"] = simpleIntInput;
                              totalbeli = (simpleIntInput * harga);
                              prov.ListKeranjang[i]["Total"] = totalbeli;

                              print(prov.ListKeranjang[i]["Total"]);

                              print(prov.ListKeranjang[i]["Jumlah"]);
                            }),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 10,
                      width: 140,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Total'),
                        SizedBox(
                          width: 50,
                        ),
                        Text('Value: \$ ${f.format(simpleIntInput * harga)}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
