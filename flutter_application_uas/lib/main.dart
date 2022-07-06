import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/BottomNavBar.dart';
import 'package:flutter_application_uas/provider/cartprovider.dart';
import 'package:flutter_application_uas/screen/detailproductgroup/detailedproduct1.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/homepage.dart';

import 'package:flutter_application_uas/screen/storeprofile/storeprofile.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_application_uas/firstscreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_application_uas/screen/logingroup/signin.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Cartprovider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        // home: FirstScreenSlide(),
        home: BottomNavBarComponent());
  }
}

// flutter pub run flutter_native_splash:create