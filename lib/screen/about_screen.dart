import 'dart:ui';
import 'package:azkar/widget/text.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          automaticallyImplyLeading: false,
          title: TextCustom(
              'BIO', 'arabic', FontWeight.w700, 22, Colors.white,TextAlign.center),

        ),
        body: Stack(children: [
          Image(
              height: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage('images/quds.jpg')),
          Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: TextCustom(
                  'Rami Attaallah', 'arabic', FontWeight.w700, 50, Colors.white,TextAlign.center))
        ]));
  }
}
