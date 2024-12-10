import 'package:flutter/material.dart';
import 'package:leapp/screens/test/ejerciciosA.dart';
import 'package:leapp/screens/test/testBD.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Ejerciciosa()
        ),
      ),
    );
  }
}
