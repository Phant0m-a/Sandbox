// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            centerTitle: true,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            title: Text('SANDBOX'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),  
            ],
          ),


          //rest of the app
          SliverToBoxAdapter(
            child: Container(height: 900,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
