import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';

class createStask extends StatefulWidget {
  const createStask({super.key});



  @override
  State<createStask> createState() => _createStaskState();
}

class _createStaskState extends State<createStask> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Get alert for this task',
              style: TextStyle(color: Colors.white, fontSize: 19)),
          Switch(
            value: _value,
            onChanged: (bool value) {
              setState(() {
                _value = value;
              });
            },
            activeColor: Colors.white,
            activeTrackColor: const Color(0xFFB1A2CA),
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: const Color(0xFF818181),
          )
        ],
      ),
      ],
    ),);
  }
}
