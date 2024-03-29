import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownproject/Bubble%20Tea%20App/Pages/shop_page.dart';
import 'package:ownproject/Bubble%20Tea%20App/components/bottom_nav_bar.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  int _selectedIndex =0;
  void navigateBottomBar(int newIndex){
    setState(() {
      _selectedIndex = newIndex;
    });
  }
  // pages to display
  final List<Widget> _pages = [
    //  shop page
    ShopPage(),

    // cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      bottomNavigationBar: MyBottomNavBar(
          onTabChange:(index) => navigateBottomBar(index),
      ),
    );
  }
}
