import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Gambar 1",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.amberAccent,
              child: Center(
                  child: Text(
                "Gambar 2",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.blueGrey,
              child: Center(
                child: Text("Gambar 3",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.grey,
              child: Center(
                child: Text("Gambar 4",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.amberAccent,
              child: Center(
                  child: Text("Gambar 5",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.black,
              child: Center(
                child: Text("Gambar 6",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text("Gambar 7",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.amberAccent,
              child: Center(
                  child: Text(
                "Gambar 8",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.deepOrange,
              child: Center(
                child: Text("Gambar 9",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.deepPurple,
              child: Center(
                child: Text("Gambar 10",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.lightBlueAccent,
              child: Center(
                  child: Text("Gambar 11",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 300,
              color: Colors.blue,
              child: Center(
                child: Text("Gambar 12",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
