import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/dropdownhome.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';

class RavenjoHomePage extends StatefulWidget {
  RavenjoHomePage({Key? key}) : super(key: key);

  @override
  State<RavenjoHomePage> createState() => _RavenjoHomePageState();
}

class _RavenjoHomePageState extends State<RavenjoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              Container(
                height: 343,
                width: 500,
                child: new Image.asset(
                  'assets/homepict.png',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [DropHome()],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
