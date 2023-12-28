import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Row dan Column"),
      ),
      body: Row(
          children: <Widget>[Text("Text 1"), Text("Text 2"), Text("Text 3")]),
    ));
  }
}
