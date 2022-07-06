import 'package:flutter/material.dart';

class HistoryCard extends StatefulWidget {
  HistoryCard({Key? key}) : super(key: key);

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
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
                        Image.asset('assets/C22.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tape White'),
                            Text("Adidas"),
                            Text('Qty : 2'),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Total'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('\$ ${79.6}')
                      ],
                    )
                  ],
                )))
      ],
    );
  }
}
