import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/categoriescards.dart';
import 'package:flutter_application_uas/components/homecards.dart';

class DropHome extends StatefulWidget {
  DropHome({Key? key}) : super(key: key);

  @override
  State<DropHome> createState() => _DropHomeState();
}

class _DropHomeState extends State<DropHome> {
  List<String> options = <String>['Top Collection', 'Categories'];
  String dropdownValue = 'Top Collection';
  dynamic temp = HomeCards();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;

              if (dropdownValue == 'Top Collection') {
                temp = HomeCards();
              } else if (dropdownValue == 'Categories') {
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
