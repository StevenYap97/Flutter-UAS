import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/homepage.dart';
import 'package:flutter_application_uas/screen/logingroup/signin.dart';
import 'package:flutter_application_uas/screen/logingroup/signup.dart';
import 'package:from_css_color/from_css_color.dart';

class PreSignInScreen extends StatefulWidget {
  PreSignInScreen({Key? key}) : super(key: key);

  @override
  State<PreSignInScreen> createState() => _PreSignInScreenState();
}

class _PreSignInScreenState extends State<PreSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/presign.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 40),
                  primary: fromCssColor('#FFFFFF'),
                  textStyle: const TextStyle(fontSize: 15),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: Size(250, 40),
                  textStyle: const TextStyle(fontSize: 15),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
