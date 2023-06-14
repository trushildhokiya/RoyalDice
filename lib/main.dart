import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Royal Dice'),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        backgroundColor: Colors.orangeAccent.shade700,
      ),
      backgroundColor: Colors.orange.shade700,
      body: DicePage(),
    ),
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void throwDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {

                  throwDice();

                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {

                  throwDice();

                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
