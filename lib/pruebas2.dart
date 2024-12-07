import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Color _indicatorColor = Colors.red; // Color inicial del indicador

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      // Cambiar el color del indicador según el índice seleccionado
      setState(() {
        switch (_tabController.index) {
          case 0:
            _indicatorColor = Colors.red;
            break;
          case 1:
            _indicatorColor = Colors.green;
            break;
          case 2:
            _indicatorColor = Colors.blue;
            break;
          default:
            _indicatorColor = Colors.red;
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
              controller: _tabController,
              indicatorColor: _indicatorColor, // Color del indicador
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
            TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text('Contenido de Tab 1')),
              Center(child: Text('Contenido de Tab 2')),
              Center(child: Text('Contenido de Tab 3')),
            ],
          ),
        ],
      ),
    );
  }
}