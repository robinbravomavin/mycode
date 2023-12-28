import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MinumanList extends StatefulWidget {
  const MinumanList({super.key});

  @override
  State<MinumanList> createState() => _MinumanListState();
}

class _MinumanListState extends State<MinumanList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Minuman"),
    );
  }
}
