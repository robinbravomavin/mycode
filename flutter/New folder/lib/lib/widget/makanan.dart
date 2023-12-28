import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';

class MakananList extends StatefulWidget {
  const MakananList({super.key});

  @override
  State<MakananList> createState() => _MakananListState();
}

class _MakananListState extends State<MakananList> {
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
  //MAPIN TOUCH HERE > NANTI DIGANTI SEMUA KE JSON
  List<String> _namaMakanan = [
    "Spagheti Carbonara",
    "Fetuccni Carbonara",
    "Aglio Olio",
    "Risoto with Mushroom",
    "Peperoni Pizza"
  ];
  List<int> _hargaMakanan = [
    82000,
    93000,
    102000,
    55000,
    76000,
  ];
  List<int> _servingStock = [
    20,
    13,
    5,
    23,
    9,
  ];

  List<int> _purchasedMakanan = [
    0,
    0,
    0,
    0,
    0,
  ];

  List<String> _imageMakanan = [
    "https://awsimages.detik.net.id/community/media/visual/2019/01/30/4ad68bf6-25aa-4314-9bcb-7f3a2978add3.jpeg?w=700&q=90",
    "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Fettuccine-Carbonara_exps175448_SD143205B01_28_2bC_RMS.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Aglio_e_olio.jpg/640px-Aglio_e_olio.jpg",
    "https://evergreenkitchen.ca/wp-content/uploads/2021/10/Creamy-Mushroom-Risotto-0-4X5.jpg",
    "https://img.freepik.com/premium-photo/sliced-peperoni-pizza-with-salami_219193-6494.jpg?w=2000"
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: _namaMakanan.length * 120,
      margin: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: _namaMakanan.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.04),
                  spreadRadius: 5,
                  blurRadius: 3,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(_imageMakanan[index])),
                      )),
                ),
                Container(
                  width: (screenWidth - 110 - 20) * 0.85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          child: Text(_namaMakanan[index])),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Rp ${formatter.format(_hargaMakanan[index]).toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Serving Stock: ${_servingStock[index].toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7.5, bottom: 7.5),
                  child: _purchasedMakanan[index] == 0
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _purchasedMakanan[index] =
                                  _purchasedMakanan[index] + 1;
                            });
                          },
                          child: Center(
                              child: Icon(Icons.add_box,
                                  size: 28, color: Colors.green)))
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_purchasedMakanan[index] <
                                        _servingStock[index]) {
                                      _purchasedMakanan[index] =
                                          _purchasedMakanan[index] + 1;
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  });
                                },
                                child: Icon(Ionicons.add_circle_outline)),
                            Text(_purchasedMakanan[index].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 24)),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_purchasedMakanan[index] > 0) {
                                      _purchasedMakanan[index] =
                                          _purchasedMakanan[index] - 1;
                                    }
                                  });
                                },
                                child: Icon(Ionicons.remove_circle_outline)),
                          ],
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
