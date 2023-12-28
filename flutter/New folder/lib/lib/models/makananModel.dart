// ignore_for_file: unnecessary_new

//MAPIN DON'T TOUCH - LIAT LIAT AJA
class Makanan {
  final String name;
  final int stock;
  final String imageURL;
  final int price;

  Makanan(this.name, this.stock, this.imageURL, this.price);

  factory Makanan.fromJson(Map<String, dynamic> json) {
    return new Makanan(
      json["name"],
      json["stock"],
      json["imageURL"],
      json["price"],
    );
  }
}
//MAPIN DON'T TOUCH - LIAT LIAT AJA
