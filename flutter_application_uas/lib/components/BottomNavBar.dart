import 'package:flutter/material.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/profile.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct1.dart';
import 'package:flutter_application_uas/firstscreen.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/homepage.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/purchaselog.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/shoppingcartscreen.dart';
import 'package:flutter_application_uas/screen/storeprofile/storeprofile.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/wishlist.dart';
import 'package:from_css_color/from_css_color.dart';

class BottomNavBarComponent extends StatefulWidget {
  const BottomNavBarComponent({Key? key}) : super(key: key);

  @override
  State<BottomNavBarComponent> createState() => _BottomNavBarComponentState();
}

class _BottomNavBarComponentState extends State<BottomNavBarComponent> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    //page 1
    RavenjoHomePage(),
    //page 2
    WishlistScreen(),
    //page 3 testing
    ShoppingCartScreen(),
    PurchaseLogScreen(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: fromCssColor('#939A79'),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_checkout,
              size: 40,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
