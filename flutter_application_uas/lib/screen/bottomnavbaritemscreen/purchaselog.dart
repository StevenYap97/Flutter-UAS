import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/dropdown.dart';
import 'package:flutter_application_uas/components/historycard.dart';
import 'package:flutter_application_uas/components/homecards.dart';
import 'package:flutter_application_uas/components/purchaselogcard.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/pants_man.dart';
import 'package:from_css_color/from_css_color.dart';

class PurchaseLogScreen extends StatefulWidget {
  PurchaseLogScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseLogScreen> createState() => _PurchaseLogScreenState();
}

class _PurchaseLogScreenState extends State<PurchaseLogScreen> {
  final List items = ['Purchase Log', 'History'];
  String itemSelected = 'Purchase Log';
  dynamic temp = PurLogCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: fromCssColor('#939A79'),
          title: Text('Purchase Log'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 370,
                        height: 40,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                                width: 200,
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
                                        colorScheme:
                                            ThemeData().colorScheme.copyWith(
                                                  primary: Colors.green[900],
                                                )))),
                            VerticalDivider(),
                            SizedBox(
                              width: 130,
                              child: DropdownButtonFormField(
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                dropdownColor: fromCssColor('#DEE1D7'),
                                items: items.map((item) {
                                  return DropdownMenuItem(
                                    child: Text(item),
                                    value: item,
                                  );
                                }).toList(),
                                value: itemSelected,
                                onChanged: (val) {
                                  setState(() {
                                    itemSelected = val as String;

                                    if (val == 'Purchase Log') {
                                      temp = PurLogCard();
                                    } else if (val == 'History') {
                                      temp = HistoryCard();
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        )),
                  ),
                ]),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: [temp],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
