// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mapinapp/models/fruit.dart';
import 'package:mapinapp/models/makanan.dart';
import 'package:intl/intl.dart';
import 'package:mapinapp/models/minuman.dart';
import 'package:mapinapp/models/snack.dart';
import 'package:mapinapp/widget/makanan.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedMenu = 0;
  var formatter = NumberFormat('#,##,000');
  final snackBar = SnackBar(
    backgroundColor: Colors.orange,
    content: Row(
      children: [
        Icon(Ionicons.warning, color: Colors.white),
        SizedBox(width: 10),
        Text('Order melebihi serving stock'),
      ],
    ),
  );
  List<Widget> _menuList = [
    MakananList(),
    MinumanList(),
    SnackList(),
    FruitList(),
  ];

  //MAPIN DON'T TOUCH - LIAT LIAT AJA
  List<dynamic> makananList = [];
  Future<void> _makanan() async {
    final String response = await rootBundle.loadString('assets/makanan.json');
    final data = await json.decode(response);

    setState(() {
      makananList =
          data['makananMenu'].map((data) => Makanan.fromJson(data)).toList();
    });
  }

  @override
  void initState() {
    _makanan();
    super.initState();
  }
  //MAPIN DON'T TOUCH - LIAT LIAT AJA

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              height: 50,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMenu = 0;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: _selectedMenu == 0
                            ? Color(0xff8b55ff)
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Ionicons.fast_food_outline,
                          color:
                              _selectedMenu == 0 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Makanan",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedMenu == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMenu = 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: _selectedMenu == 1
                            ? Color(0xff8b55ff)
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Ionicons.beer_outline,
                          color:
                              _selectedMenu == 1 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Minuman",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedMenu == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMenu = 2;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: _selectedMenu == 2
                            ? Color(0xff8b55ff)
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Ionicons.pizza_outline,
                          color:
                              _selectedMenu == 2 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Snack",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedMenu == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMenu = 3;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: _selectedMenu == 3
                            ? Color(0xff8b55ff)
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Ionicons.heart_outline,
                          color:
                              _selectedMenu == 3 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Fruits & Snack",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedMenu == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            _menuList[_selectedMenu],
          ],
        ));
  }
}
