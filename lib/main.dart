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
      theme: ThemeData(useMaterial3: true,appBarTheme: AppBarTheme(backgroundColor: Colors.grey)),
      
    );
  }
}