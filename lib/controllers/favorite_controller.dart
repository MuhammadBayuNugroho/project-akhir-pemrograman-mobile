import 'package:flutter/material.dart';
import 'package:flutter_app/models/favorite_model.dart';
import 'package:flutter_app/services/favorite_service.dart';

class FavoriteController {
  final FavoriteService _favoriteService = FavoriteService();

  List<FavoritesModel>? _favorites;

  List<FavoritesModel>? get favorites => _favorites;

  Future<void> getFavorites() async {
    try {
      final response = await _favoriteService.getFavorites();
      if (response.statusCode == 200) {
        _favorites = (response.data as List<dynamic>)
            .map((e) => FavoritesModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      debugPrint('Error $e');
    } finally {}
  }

  void deleteFavorite(int favoriteId) async {
    try {
      final response = await _favoriteService.deleteFavorite(favoriteId);
      if (response.statusCode == 204) {
        getFavorites();
      }
    } catch (e) {
      debugPrint('$e');
    } finally {}
  }
}
