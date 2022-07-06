import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/screen/logingroup/signin.dart';
import 'package:from_css_color/from_css_color.dart';

class ForgotPassScreen extends StatefulWidget {
  ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

TextEditingController emailcontroller = TextEditingController();

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Create a new account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 48, 9),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: fromCssColor('#939A79')),
                    child: const Text(
                      'Send Code To Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                  )),
            ],
          )),
    );
  }
}
