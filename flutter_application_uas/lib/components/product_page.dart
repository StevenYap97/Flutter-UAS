import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class WomanClothes extends StatefulWidget {
  WomanClothes({Key? key}) : super(key: key);

  @override
  State<WomanClothes> createState() => _WomanClothesState();
}

class _WomanClothesState extends State<WomanClothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
          // Where user inputs the title of the note
          centerTitle: true,
          title: const TextField(
            textAlign: TextAlign.center,
            // The style of the input field
            decoration: InputDecoration(
              hintText: 'Title',
              icon: Icon(Icons.edit), // Edit icon
              // The style of the hint text
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            // The controller of the input box
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.pink),
                    child: const Center(
                      child: Text(
                        "pink",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.green),
                    child: const Center(
                      child: Text(
                        "green",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.purple),
                    child: Center(
                      child: Text(
                        "purple",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.yellow),
                    child: Center(
                      child: Text(
                        "yellow",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.brown),
                    child: Center(
                      child: Text(
                        "brown",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.grey),
                    child: const Center(
                      child: Text(
                        "grey",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
