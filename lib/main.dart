// ignore: unused_import
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:facebook_clone/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: NavBarScreen(),
    );
  }
}
