// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sandbox/pages/widgets/custom_bottom_nav.dart';
import 'package:sandbox/pages/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            centerTitle: true,
            // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            // Navigator.push(context, MaterialPageRoute(builder: ((context)=>Drawer()));
            // leading: Drawer()),

            title: Text('SANDBOX'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            ],
          ),

          //rest of the app
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20.0),
              height: 900,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange[200],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
