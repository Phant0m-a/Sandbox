// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';


class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'FAVOURITE PAGE',
            style: TextStyle(
                letterSpacing: 3.5, fontSize: 35, color: Colors.white),
          ),
        ),
        color: Colors.orange,
      ),
    );
  }
}
