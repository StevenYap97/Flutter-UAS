import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/profile.dart';
import 'package:from_css_color/from_css_color.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  SizedBox size = const SizedBox(height: 10);
  TextEditingController newpwController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? isnewpwEmpty;
  bool? ispasswordEmpty;
  final bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#D3D8BA'),
      appBar: AppBar(
        backgroundColor: fromCssColor('#939A79'),
        title: Text(
          'Change Password',
          textAlign: TextAlign.center,
        ),
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      size,
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
                      size,
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: newpwController,
                          decoration: InputDecoration(
                            labelText: 'Confirm New Password',
                            errorText: isnewpwEmpty == true
                                ? 'new password is required'
                                : null,
                          ),
                        ),
                      ),
                      size,
                      Container(
                          height: 40,
                          width: 210,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: fromCssColor('#939A79')),
                            child: const Text(
                              'Update Password',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () {
                              if (newpwController.text.isEmpty) {
                                setState(() {
                                  isnewpwEmpty = true;
                                });
                              } else {
                                setState(() {
                                  isnewpwEmpty = false;
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
                                  newpwController.text.isNotEmpty) {
                                setState(() {
                                  ispasswordEmpty = false;
                                  isnewpwEmpty = false;
                                });
                                Navigator.pop(context);
                              }
                            },
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
