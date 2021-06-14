import 'package:azkar/screen/about_screen.dart';
import 'package:azkar/screen/home_screen.dart';
import 'package:azkar/screen/launch_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Azkar());
}
class Azkar extends StatefulWidget {
  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/launch':(context)=>Launch(),
        '/about':(context)=>About(),
        '/home':(context)=>Home(),
      },
      initialRoute: '/launch',
      debugShowCheckedModeBanner: false,
    );
  }
}
