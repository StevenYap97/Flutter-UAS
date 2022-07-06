import 'dart:ui';

import "package:flutter/material.dart";
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/homepage.dart';
import 'package:flutter_application_uas/screen/logingroup/presign.dart';
import "package:intro_slider/intro_slider.dart";
import 'package:intro_slider/slide_object.dart';

class FirstScreenSlide extends StatefulWidget {
  FirstScreenSlide({Key? key}) : super(key: key);

  @override
  State<FirstScreenSlide> createState() => _FirstScreenSlideState();
}

class _FirstScreenSlideState extends State<FirstScreenSlide> {
  List<Slide> slides = [];

  void initState() {
    super.initState();

    slides.add(new Slide(
        backgroundImage: 'assets/introslider1.png',
        backgroundBlendMode: BlendMode.screen));

    slides.add(
      new Slide(
        backgroundImage: 'assets/introslider2.png',
        backgroundBlendMode: BlendMode.screen,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PreSignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
