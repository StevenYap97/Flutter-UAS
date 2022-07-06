import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/homepage.dart';
import 'package:flutter_application_uas/screen/logingroup/forgorpassword.dart';
import 'package:flutter_application_uas/screen/logingroup/signup.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String logintext = 'login';
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? isUsernameEmpty;
  bool? ispasswordEmpty;
  bool _value = false;
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
                    'Login Into Your Account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 48, 9),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      labelText: 'User Name',
                      errorText: isUsernameEmpty == true
                          ? 'username is required'
                          : null),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      errorText: ispasswordEmpty == true
                          ? 'password is required'
                          : null),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _value = !_value;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: _value
                                      ? Icon(
                                          Icons.check_circle_outline,
                                          size: 30.0,
                                          color: Colors.green[900],
                                        )
                                      : Icon(
                                          Icons.circle_outlined,
                                          size: 30.0,
                                          color: Colors.green[900],
                                        ),
                                ),
                                Text('Remember my password'),
                                SizedBox(width: 80),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassScreen()));
                              },
                              child: const Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 7, 48, 9)),
                              ),
                            ),
                          ],
                        )),
                  )),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: fromCssColor('#939A79')),
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onPressed: () {
                      if (usernameController.text.isEmpty) {
                        setState(() {
                          isUsernameEmpty = true;
                        });
                      } else {
                        setState(() {
                          isUsernameEmpty = false;
                        });
                      }
                      if (passwordController.text.isEmpty) {
                        setState(() {
                          ispasswordEmpty = true;
                        });
                      } else {
                        setState(() {
                          ispasswordEmpty = false;
                        });
                      }
                      if (passwordController.text.isNotEmpty &&
                          usernameController.text.isNotEmpty) {
                        setState(() {
                          ispasswordEmpty = false;
                          isUsernameEmpty = false;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBarComponent()));
                      }
                    },
                  )),
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 7, 48, 9)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
