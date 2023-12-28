// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mapinapp/history.dart';
import 'package:mapinapp/home.dart';
import 'package:mapinapp/items.dart';
import 'package:mapinapp/settings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _myIndex = 0;

  List<Widget> _pageApp = [
    Home(),
    Items(),
    History(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text("Mobile POS"),
            Icon(Ionicons.notifications_outline),
          ],
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _myIndex,
        onTap: (i) => setState(() => _myIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color(0xff8b55ff),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Items"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("History"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Settings"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: _pageApp[_myIndex],
    );
  }
}
