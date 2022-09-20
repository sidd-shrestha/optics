import 'package:flutter/material.dart';
import 'package:optics/data/repo/cart_repo.dart';
import 'package:get/get.dart';
import 'package:optics/models/products_model.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
          id: value.id,
          productName: value.productName,
          productImage: value.productImage,
          productQuantity: value.productQuantity,
          productPrice: value.productPrice,
          createdAt: value.createdAt,
          updatedAt: value.updatedAt,
          quantity: value.quantity! + quantity,
          isExist: true,
        );
      });
      if (totalQuantity <= 0) {
        _items.remove(product.id!);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            productName: product.productName,
            productImage: product.productImage,
            productQuantity: product.productQuantity,
            productPrice: product.productPrice,
            createdAt: product.createdAt,
            updatedAt: product.updatedAt,
            quantity: quantity,
            isExist: true,
          );
        });
      } else {
        Get.snackbar(
            "Item count", "You should add atleast one item in the cart!!",
            backgroundColor: Colors.blue, colorText: Colors.white);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    } else {
      return false;
    }
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }

  List<CartModel> get getItems {
    return _items.entries.map((e) {
      return e.value;
    }).toList();
  }
}
