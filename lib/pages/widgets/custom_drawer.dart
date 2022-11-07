// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sandbox/pages/favourites/favourite.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[300],
      child: Container(
        // color: Colors.deepPurple[200],
        color: Colors.orange[200],
        child: ListView(
          children: [
            // header
            DrawerHeader(
                child: Center(
              child: Text(
                'S A N D B O X',
                style: TextStyle(fontSize: 35),
              ),
            )),

            // drawer options
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'profile',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favourite()));
              },
            ),

            // settings
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'settings',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favourite()));
              },
            ),

            // logout
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'logout',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favourite()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
