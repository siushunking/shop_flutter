import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/main_screen/category.dart';
import 'package:shop/main_screen/home.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    HomeScreen(),
    CategoryScreen(),
    Center(child: Text("category screen"),),
    Center(child: Text("stories screen"),),
    Center(child: Text("cart screen"),),
    Center(child: Text("profile screen"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.red,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: const[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Category'),
      BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Stories'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ],
    onTap: (index) {
      setState(() {
        _selectedIndex = index;
      });
    },
    )
    );
    
    
  }
}