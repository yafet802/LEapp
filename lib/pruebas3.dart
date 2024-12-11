import 'package:flutter/material.dart';

class MyButtonScreen extends StatefulWidget {
  @override
  _MyButtonScreenState createState() => _MyButtonScreenState();
}

class _MyButtonScreenState extends State<MyButtonScreen> {
  int centeredButton = 0; // 0: Ninguno, 1: Botón 1, 2: Botón 2, 3: Botón 3

  void moveToCenter(int buttonNumber) {
    setState(() {
      centeredButton = buttonNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones Animados'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 300),
            bottom: centeredButton == 1 ? 100 : 0,
            left: centeredButton == 1 ? 0 : centeredButton == 2 ? 100 : 200,
            child: ElevatedButton(
              onPressed: () => moveToCenter(centeredButton == 1 ? 0 : 1),
              child: Text('1'),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 300),
            bottom: centeredButton == 2 ? 100 : 0,
            left: centeredButton == 2 ? 0 : centeredButton == 3 ? 100 : 200,
            child: ElevatedButton(
              onPressed: () => moveToCenter(centeredButton == 2 ? 0 : 2),
              child: Text('2'),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 300),
            bottom: centeredButton == 3 ? 100 : 0,
            left: centeredButton == 3 ? 0 : centeredButton == 1 ? 100 : 200,
            child: ElevatedButton(
              onPressed: () => moveToCenter(centeredButton == 3 ? 0 : 3),
              child: Text('3'),
            ),
          ),
        ],
      ),
    );
  }
}

