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
          backgroundColor: Colors.blue,
          title: Text(
            'Dice',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PTSans',
              fontWeight: FontWeight.bold,
              fontSize: 30,
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
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                print(
                  'The left dice got pressed',
                );
              },
              child: Image.asset(
                'lib/images/one.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                print(
                  'The right dice got pressed',
                );
              },
              child: Image.asset(
                'lib/images/one.png',
              ),
            ),
          ),
        ], // rowChildren
      ),
    );
  }
}
