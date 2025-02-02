import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Kategori'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Accpunt'),
      ],
      selectedItemColor: Colors.green,
    );
  }
}
