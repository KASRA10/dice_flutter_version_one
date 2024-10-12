import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(
              fontFamily: 'PTSans',
              backgroundColor: Colors.red,
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
} // End Of Main

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
