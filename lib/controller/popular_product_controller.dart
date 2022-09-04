import 'package:get/get.dart';
import 'package:optics/data/repo/popular_product_repo.dart';
import 'package:optics/models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response);
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {
      print("got products");
    }
  }
}
