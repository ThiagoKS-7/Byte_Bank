import 'package:flutter/material.dart';
import 'package:bytebank/src/screens/Inicio.dart';
import 'package:bytebank/src/screens/Extrato.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  //Classe principal, só passa um state e ja era
  @override
  State<HomePage> createState() => _HomePageState();
}

// configura o bottomMenu e os indices dele
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Inicio(),
    Lista_Extrato(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // Widget do menu de baixo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Extract',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen[900],
        onTap: _onItemTapped,
      ),
    );
  }
}
