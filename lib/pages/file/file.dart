import 'package:flutter/material.dart';

class File extends StatefulWidget {
  const File({super.key});

  @override
  State<File> createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                primary: false,
                crossAxisCount: 2,
                children: [
                  cardtile(
                    icon: Icons.person,
                    title: 'Personal Data',
                  ),
                  cardtile(
                    icon: Icons.schedule,
                    title: 'Course Schedule',
                  ),
                  cardtile(
                    icon: Icons.bookmark,
                    title: 'Study Result',
                  ),
                  cardtile(
                    icon: Icons.book,
                    title: 'Course Plan',
                  ),
                  cardtile(
                    icon: Icons.web_stories,
                    title: 'Websites',
                  ),
                  cardtile(
                    icon: Icons.apps,
                    title: 'Apps',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardtile extends StatelessWidget {
  cardtile({required this.icon, required this.title});
  final IconData icon;
  final String title;

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      child: Column(
        children: [
          // SvgPicture.asset('assets/profile.jpg')

          Icon(
            icon,
            color: Colors.orange,
            size: 120,
          ),
          Text(
            title,
            style:
                TextStyle(fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1)),
          )
        ],
      ),
    );
  }
}
