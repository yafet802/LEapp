import 'package:flutter/material.dart';
import 'package:leapp/screens/test/crud_a.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CRUDa()
      ),
    );
  }
}
