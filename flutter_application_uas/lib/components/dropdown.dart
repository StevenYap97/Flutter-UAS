import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/purchaselogcard.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/pants_man.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Drop extends StatefulWidget {
  Drop({Key? key}) : super(key: key);

  @override
  State<Drop> createState() => _DropState();
}

String itemSelected = 'XL';
List items = ['XL', 'L', 'M', 'S'];

class _DropState extends State<Drop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: DropdownButtonFormField(
        decoration: InputDecoration.collapsed(hintText: ''),
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
          });
        },
      ),
    );
  }
}
