import 'package:flutter/material.dart';
import 'package:flutter_assessment/HomePage.dart';
import 'package:flutter_assessment/button.dart';
import 'package:flutter_assessment/cartscreen.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[ 
    HomePage(),
    CartScreen(),
    FormSubmit(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Keranjang',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.note_add),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
  ),
);
}
}
