import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

 static final mainurl = 'http://192.168.29.216:8080/mini/images/';

  static Future<List<Catmodel>> fetchCatModels() async {
  List<Catmodel> catModels = [];

  try {
    var response = await http.get(Uri.parse('http://192.168.29.216:8080/mini/category.jsp'));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      catModels = jsonResponse.map((data) => Catmodel.fromJson(data)).toList();
    }
  } catch (e) {
    print('Error fetching cat models: $e');
  }

  return catModels;
}


  static Future<List<Promodel>> fetchProducts() async {
  List<Promodel> fetchedProducts = [];

  try {
    var response = await http.get(Uri.parse('http://192.168.29.216:8080/mini/pro.jsp'));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      fetchedProducts = jsonResponse.map((data) => Promodel.fromJson(data)).toList();
    }
  } catch (e) {
    print('Error fetching products: $e');
  }

  return fetchedProducts;
}

}

// To parse this JSON data, do
//
//     final catmodel = catmodelFromJson(jsonString);

// import 'dart:convert';

List<Catmodel> catmodelFromJson(String str) => List<Catmodel>.from(json.decode(str).map((x) => Catmodel.fromJson(x)));

String catmodelToJson(List<Catmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Catmodel {
    int? id;
    String? title;

    Catmodel({
        this.id,
        this.title,
    });

    factory Catmodel.fromJson(Map<String, dynamic> json) => Catmodel(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}

// To parse this JSON data, do
//
//     final promodel = promodelFromJson(jsonString);

// import 'dart:convert';

List<Promodel> promodelFromJson(String str) => List<Promodel>.from(json.decode(str).map((x) => Promodel.fromJson(x)));

String promodelToJson(List<Promodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Promodel {
  String?description;
  int? id;
  String? title;
  double? price;
  String? productImage;
   bool isFavorite; // Added isFavorite field

  Promodel({
    this.description,
    this.id,
    this.title,
    this.price,
    this.productImage,
     required this.isFavorite, // Updated constructor to include isFavorite
  });

  factory Promodel.fromJson(Map<String, dynamic> json) => Promodel(
    description: json["description"],
        id: json["id"],
        title: json["title"],
        price: json["price"],
        productImage: json["product_image"],
         isFavorite: false, // Initialized isFavorite to false by default
      );

  Map<String, dynamic> toJson() => {
    "description":description,
        "id": id,
        "title": title,
        "price": price,
        "product_image": productImage,
        // isFavorite field will not be included in JSON serialization
      };
}

