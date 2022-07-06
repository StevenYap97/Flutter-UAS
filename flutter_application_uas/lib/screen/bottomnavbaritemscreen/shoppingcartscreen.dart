import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/components/shoppingcartfill.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_application_uas/provider/cartprovider.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatefulWidget {
  ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Cartprovider>(context);
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
          backgroundColor: fromCssColor('#939A79'),
          title: Text("Shopping Cart"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              height: 480,
              child: ShoppingCartFill(),
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  if (prov.ListKeranjang.isNotEmpty) {
                    final snackbar = SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content:
                          Text(' Item Purchased! Please Check Purchase Log!'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);

                    prov.hapusKeranjang();
                  } else {
                    final snackbar = SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content:
                          Text('No item in the Cart! Please Pick one Product '),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);

                    prov.hapusKeranjang();
                  }

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavBarComponent()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 12, 61, 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text(
                  'Purchase!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ));
  }
}
