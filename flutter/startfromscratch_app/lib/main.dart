import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 2, 31),
              Color.fromARGB(255, 43, 38, 122),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text('Hello World!', style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              ),
              ),
          ),
        ),
      ),
    ),
  );
}
