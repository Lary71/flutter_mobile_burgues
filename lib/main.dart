import 'package:flutter/material.dart';
import 'package:flutter_mobile_burgues/Pages/Homescreen.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Burgers',
      theme: ThemeData.dark(),
      home: Homescreen(),
    );
  }
}
