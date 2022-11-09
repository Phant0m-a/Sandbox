import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsUi extends StatefulWidget {
  const NewsUi({super.key});

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //space
          SizedBox(
            height: 25,
          ),

          //nav left
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Container(
              height: 45,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Image.asset(
                'assets/icons/icons8-align-left-48.png',
                color: Colors.grey[800],
              ),
            ),
          ),
         
         
        //  space
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Dicover Your Own Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
