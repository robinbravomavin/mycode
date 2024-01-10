import 'package:flutter/material.dart';

import 'package:startfromscratch_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 9, 0, 55),
          Color.fromARGB(255, 39, 20, 161),
        ),
      ),
    ),
  );
}
