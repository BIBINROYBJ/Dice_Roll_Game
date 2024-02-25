
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice Game',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//stateful widget for dynamic changes
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_btn_count = 1;
  int right_btn_count = 1;
  void random_value (){
    setState(
          () {
        right_btn_count = Random().nextInt(6)+1;
        left_btn_count = Random().nextInt(6)+1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                random_value();
              },
              child: Image.asset('images/dice$left_btn_count.png'),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: () {
                random_value();
              },
              child: Image.asset('images/dice$right_btn_count.png'),
            ),
          ),
        ],
      ),
    );
  }
}
