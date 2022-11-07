// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sandbox/pages/home_page.dart';

void main() {
  runApp(const Sandbox());
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedIconTheme: IconThemeData(color: Colors.orange)),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.orange[200])),
    );
  }
}
