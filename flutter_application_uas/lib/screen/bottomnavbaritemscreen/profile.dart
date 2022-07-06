import 'package:flutter/material.dart';
import 'package:flutter_application_uas/changepassword.dart';
import 'package:flutter_application_uas/editprofile.dart';
import 'package:from_css_color/from_css_color.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SizedBox size = const SizedBox(height: 10);
  BoxShadow shadow = BoxShadow(
    color: Colors.black.withOpacity(0.5),
    blurRadius: 7,
    offset: const Offset(0, 3), // changes position of shadow
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#D3D8BA'),
      appBar: AppBar(
        backgroundColor: fromCssColor('#939A79'),
        title: Text(
          'Profile',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                          backgroundColor: fromCssColor('#939A79'),
                          backgroundImage: AssetImage('assets/alena.jpg'),
                          radius: 75,
                        ),
                      ),
                      size,
                      Text(
                        'Alena Anzela',
                        style: TextStyle(color: Colors.white),
                      ),
                      size,
                      Container(
                          decoration: BoxDecoration(
                            boxShadow: [shadow],
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: fromCssColor('#2F2F2C'),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfile()));
                              },
                              child: const Text(
                                'Edit Profile',
                                style: const TextStyle(color: Colors.white),
                              ))),
                      size,
                      Container(
                          height: 450,
                          width: 600,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Alena Azalea')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Username',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Alena_sweet')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Birth',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('January 4, 2002')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Address',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Jl. Thamrin, Medan')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Phone Number',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('081234567890')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [shadow],
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('OnlyAlena@gmail.com')
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: fromCssColor('#2F2F2C'),
                                      minimumSize: const Size(200, 48),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChangePassword()));
                                    },
                                    child: const Text('Changed Password'))
                              ],
                            ),
                          ))
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
