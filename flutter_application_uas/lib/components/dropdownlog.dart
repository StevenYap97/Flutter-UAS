import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/categoriescards.dart';
import 'package:flutter_application_uas/components/purchaselogcard.dart';

class DropPurLog extends StatefulWidget {
  DropPurLog({Key? key}) : super(key: key);

  @override
  State<DropPurLog> createState() => _DropPurLogState();
}

class _DropPurLogState extends State<DropPurLog> {
  List<String> options = <String>['Purchase Log', 'History'];
  String dropdownValue = 'Purchase Log';
  dynamic temp = PurLogCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;

              if (dropdownValue == 'Purchase Log') {
                temp = PurLogCard();
              } else if (dropdownValue == 'History') {
                temp = CategoriesCard();
              }
            });
          },
          style: const TextStyle(color: Colors.black),
          selectedItemBuilder: (BuildContext context) {
            return options.map((String value) {
              return Container(
                width: 100,
                alignment: Alignment(0, 0),
                child: Text(
                  dropdownValue,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList();
          },
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        Container(
          child: temp,
        )
      ],
    );
  }
}
