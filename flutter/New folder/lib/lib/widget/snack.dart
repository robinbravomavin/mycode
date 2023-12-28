import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SnackList extends StatefulWidget {
  const SnackList({super.key});

  @override
  State<SnackList> createState() => _SnackListState();
}

class _SnackListState extends State<SnackList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Snack"),
    );
  }
}
