import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class WishlistBoxFrame extends StatefulWidget {
  final String pict;
  String productname;
  double price;
  String storename;

  WishlistBoxFrame(
      {Key? key,
      required this.pict,
      required this.productname,
      required this.storename,
      required this.price})
      : super(key: key);

  @override
  State<WishlistBoxFrame> createState() => _WishlistBoxFrameState();
}

class _WishlistBoxFrameState extends State<WishlistBoxFrame> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: Colors.grey, style: BorderStyle.solid, width: 1)),
        elevation: 15,
        child: Container(
            height: 180,
            width: 180,
            child: Column(children: [
              Container(
                height: 5,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red[500],
                  size: 20,
                ),
              ),
              new Image.asset(
                widget.pict,
                width: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productname,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 1),
                      Text(
                        widget.storename,
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Text('\$ ${widget.price}')
                ],
              ),
            ])));
  }
}
