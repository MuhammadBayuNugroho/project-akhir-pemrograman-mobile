import 'package:flutter/material.dart';
import 'package:flutter_app/models/cart_model.dart';
import 'package:flutter_app/models/favorite_model.dart';
import 'package:flutter_app/services/cart_service.dart';
import 'package:flutter_app/services/favorite_service.dart';

class CartController {
  final CartService _cartService = CartService();

  List<CartModel>? _cart;

  List<CartModel>? get cart => _cart;

  Future<void> getCart() async {
    try {
      final response = await _cartService.getCart();
      if (response.statusCode == 200) {
        _cart = (response.data as List<dynamic>)
            .map((e) => CartModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      debugPrint('Error $e');
    } finally {}
  }

  void deleteCart(int cartId) async {
    try {
      final response = await _cartService.deleteCart(cartId);
      if (response.statusCode == 204) {
        getCart();
      }
    } catch (e) {
      debugPrint('$e');
    } finally {}
  }
}
