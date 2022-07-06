import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_uas/provider/cartprovider.dart';

class PurLogCard extends StatefulWidget {
  PurLogCard({Key? key}) : super(key: key);

  @override
  State<PurLogCard> createState() => _PurLogCardState();
}

class _PurLogCardState extends State<PurLogCard> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Cartprovider>(context);
    return Container(
      height: 485,
      child: ListView(
          shrinkWrap: true,
          children: List.generate(prov.ListPurLog.length, (i) {
            return Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(
                      color: Colors.grey, style: BorderStyle.solid, width: 1)),
              elevation: 15,
              child: Container(
                  height: 200,
                  width: 390,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(prov.ListPurLog[i]["Gambar"]),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Nama Produk : '),
                                  Text(
                                    prov.ListPurLog[i]["Nama"],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Nama Toko :'),
                                  Text(prov.ListPurLog[i]["Toko"],
                                      style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity : '),
                                  Text(prov.ListPurLog[i]["Jumlah"].toString(),
                                      style: TextStyle(fontSize: 15)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'Total Bayar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 240,
                            ),
                            Text('\$'),
                            Text(
                              prov.ListPurLog[i]["Total"].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            );
          })),
    );
  }
}
