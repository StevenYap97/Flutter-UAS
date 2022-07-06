import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/clothes_man.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/clothes_woman.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/pants_man.dart';
import 'package:flutter_application_uas/screen/categoriesscreen/pants_woman.dart';

class CategoriesCard extends StatefulWidget {
  CategoriesCard({Key? key}) : super(key: key);

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CLOTHES_MAN()));
                },
                child: Card(
                    child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/categoriesmenclothes.png'),
                ))),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PANTS_MAN()));
                },
                child: Card(
                    child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/categoriesmenpants.png'),
                ))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CLOTHES_WOMAN()));
                },
                child: Card(
                    child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/categorieswomenclothes.png'),
                ))),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PANTS_WOMAN()));
                },
                child: Card(
                    child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/categorieswomenpants.png'),
                ))),
          ],
        )
      ],
    );
  }
}
