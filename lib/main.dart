import 'package:flutter/material.dart';
import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/pages/glasses/popular_glasses.dart';
import 'package:optics/pages/home/main_page.dart';
import 'package:get/get.dart';
import 'pages/glasses/recommended_glasses.dart';
import 'helper/dependencies.dart' as dep;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await dep.init();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Get.find<PopularProductController>().getPopularProductList();
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MainPage(),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:optics/models/products_model.dart';
import 'package:flutter/cupertino.dart';

Future<Product> fetchProduct() async {
  final response = await http
      .get(Uri.parse("http://localhost:8000/api/products"))
      .timeout(Duration(minutes: 1), onTimeout: () {
    // http://www.dpdahal.com.np
    // Closing client here throwns an error
    // client.close(); // Connection closed before full header was received
    return http.Response('Error', 500); // Replace 500 with your http code.
  });

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
    print(response);
  }
}

class Product {
  // int? totalSize;
  // int? typeId;
  // int? offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {
      //   required totalSize,
      // required typeId,
      // required offset,
      required products}) {
    this._products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  int? subcategoryId;
  String? productCode;
  String? slug;
  String? productName;
  String? productImage;
  String? productQuantity;
  String? productPrice;
  String? productDescription;
  Null? saleTag;
  String? offerPrice;
  int? status;
  int? newArrivalProducts;
  int? featuredProducts;
  int? offerProducts;
  int? trending;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? createdAt;
  String? updatedAt;

  ProductModel(
      {this.id,
      this.subcategoryId,
      this.productCode,
      this.slug,
      this.productName,
      this.productImage,
      this.productQuantity,
      this.productPrice,
      this.productDescription,
      this.saleTag,
      this.offerPrice,
      this.status,
      this.newArrivalProducts,
      this.featuredProducts,
      this.offerProducts,
      this.trending,
      this.metaTitle,
      this.metaDescription,
      this.metaKeyword,
      this.createdAt,
      this.updatedAt});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subcategoryId = json['subcategory_id'];
    productCode = json['product_code'];
    slug = json['slug'];
    productName = json['product_name'];
    productImage = json['product_image'];
    productQuantity = json['product_quantity'];
    productPrice = json['product_price'];
    productDescription = json['product_description'];
    saleTag = json['sale_tag'];
    offerPrice = json['offer_price'];
    status = json['status'];
    newArrivalProducts = json['new_arrival_products'];
    featuredProducts = json['featured_products'];
    offerProducts = json['offer_products'];
    trending = json['trending'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeyword = json['meta_keyword'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  Duration? connectionTimeout;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Product>(
            future: futureProduct,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}


// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<List<Photo>> fetchPhotos(http.Client client) async {
//   final response = await client
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//   // Use the compute function to run parsePhotos in a separate isolate.
//   return compute(parsePhotos, response.body);
// }

// // A function that converts a response body into a List<Photo>.
// List<Photo> parsePhotos(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
// }

// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;

//   const Photo({
//     required this.albumId,
//     required this.id,
//     required this.title,
//     required this.url,
//     required this.thumbnailUrl,
//   });

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       albumId: json['albumId'] as int,
//       id: json['id'] as int,
//       title: json['title'] as String,
//       url: json['url'] as String,
//       thumbnailUrl: json['thumbnailUrl'] as String,
//     );
//   }
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Isolate Demo';

//     return const MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: FutureBuilder<List<Photo>>(
//         future: fetchPhotos(http.Client()),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return const Center(
//               child: Text('An error has occurred!'),
//             );
//           } else if (snapshot.hasData) {
//             return PhotosList(photos: snapshot.data!);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class PhotosList extends StatelessWidget {
//   const PhotosList({super.key, required this.photos});

//   final List<Photo> photos;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: photos.length,
//       itemBuilder: (context, index) {
//         return Image.network(photos[index].thumbnailUrl);
//       },
//     );
//   }
// }
