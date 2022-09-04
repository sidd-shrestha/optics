import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:optics/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Product> fetchProduct() async {
  final response =
      await http.get(Uri.parse('https://10.0.2.2:8000/api/products'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}


// class Network {
//   final String _url = 'http://localhost:8000/api/products';
//   //if you are using android studio emulator, change localhost to 10.0.2.2
//   var token;

//   _getToken() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     token = jsonDecode(localStorage.getString('token'))['token'];
//   }

//   authData(data, apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     return await http.post(fullUrl,
//         body: jsonEncode(data), headers: _setHeaders());
//   }

//   getData(apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return await http.get(fullUrl, headers: _setHeaders());
//   }

//   _setHeaders() => {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token'
//       };
// }
