import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 15,
          backgroundColor: Colors.red,
          title: const Text(
            'Dice',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PTSans',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: const DicePage(),
      ),
    ),
  );
} // End Of Main

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceChanger() {
    // ignore: avoid_print
    print(
      'The left And right dices got pressed',
    ); // For Console Debugging

    setState(
      () {
        leftDiceNumber = Random().nextInt(6) +
            1; // Random is in the range of 0 to 5 and with +1 it would be ==> from 1 To 6.
        rightDiceNumber = Random().nextInt(6) +
            1; // Random is in the range of 0 to 5 and with +1 it would be ==> from 1 To 6.;
      },
    ); // End Of setState
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                diceChanger(); // setState
              },
              child: Image.asset(
                'lib/images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceChanger();
              },
              child: Image.asset(
                'lib/images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ], // rowChildren
      ),
    );
  }
}
