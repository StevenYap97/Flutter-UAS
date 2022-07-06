import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class ProductBoxFrame extends StatefulWidget {
  final String pict;
  String productname;
  double price;
  String storename;

  ProductBoxFrame(
      {Key? key,
      required this.pict,
      required this.productname,
      required this.storename,
      required this.price})
      : super(key: key);

  @override
  State<ProductBoxFrame> createState() => _ProductBoxFrameState();
}

class _ProductBoxFrameState extends State<ProductBoxFrame> {
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
              new Image.asset(
                widget.pict,
                width: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productname,
                          textAlign: TextAlign.left,
                        ),
                        Divider(
                          height: 3,
                          thickness: 0.5,
                          color: Colors.black54,
                        ),
                        Text(
                          widget.storename,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Text('\$ ${widget.price}')
                ],
              ),
            ])));
  }
}
