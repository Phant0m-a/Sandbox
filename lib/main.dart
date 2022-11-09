// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:sandbox/pages/news/newsUI.dart';
import 'package:sandbox/pages/widgets/time_picker_custom.dart';

import 'pages/favourites/favourite.dart';
// import 'package:sandbox/pages/home_page.dart';

// void main() {
//   runApp(const Sandbox());
// }

// class Sandbox extends StatelessWidget {
//   const Sandbox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//       theme: ThemeData(
//           bottomNavigationBarTheme: BottomNavigationBarThemeData(
//               selectedIconTheme: IconThemeData(color: Colors.orange)),
//           useMaterial3: true,
//           appBarTheme: AppBarTheme(backgroundColor: Colors.orange[200])),
//     );
//   }
// }

//test
// import 'package:flutter/material.dart';
// import 'package:sandbox/pages/file/file.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'S A N D B O X';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedIconTheme: IconThemeData(color: Colors.orange)),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.orange[200])),
      // home: MyStatefulWidget(),
      home: NewsUi(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'sad loif',
    //   style: optionStyle,
    // ),
    // File(),

    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Portfolio',
      style: optionStyle,
    ),
    Text(
      'Favourite',
      style: optionStyle,
    ),
    TimePickerCustom()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('S A N D B O X'),
      ),
      drawer: Drawer(
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Favourite()));
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Favourite()));
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Portfolio',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
