
import 'package:e_commerce_app/Views/Screen/customer_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _tabs = [
    CustomerHomeScreen(),
    Center(child: Text('Category Page'),),
    Center(child: Text('Shopping Page'),),
    Center(child: Text('Cart Page'),),
    Center(child: Text('Profile Page'),),
  ];
 
  int _current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_current_index],
      bottomNavigationBar:  BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _current_index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), label: 'Shopping'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'People'),
        ],
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
      ),
    );
  }
}
