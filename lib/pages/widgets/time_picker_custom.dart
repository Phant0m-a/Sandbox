// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TimePickerCustom extends StatefulWidget {
  const TimePickerCustom({super.key});

  @override
  State<TimePickerCustom> createState() => _TimePickerCustomState();
}

class _TimePickerCustomState extends State<TimePickerCustom> {
  TimeOfDay _time = TimeOfDay.now();
  void setTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _time = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 7, 54), borderRadius: BorderRadius.circular(15)),
            child: Text(
              _time.format(context).toString(),
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.orange[200],
              onPressed: () {
                setTimePicker();
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Pick Color'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
