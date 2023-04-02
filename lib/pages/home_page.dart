import 'package:coffeshop/pages/shoppage.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../const.dart';
import 'cardpages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _secilenIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _secilenIndex = index;
    });
  }
//page
  final List<Widget> _pages=[
    ShopPages(),
    CardPages()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_secilenIndex],
    );
  }
}
