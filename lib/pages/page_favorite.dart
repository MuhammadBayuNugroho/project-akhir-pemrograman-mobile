import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/favorite_controller.dart';
import 'package:flutter_app/models/favorite_model.dart';
import 'package:flutter_app/pages/bottomNavigation.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final FavoriteController _favoriteController = FavoriteController();

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    await _favoriteController.getFavorites();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Page'),
      ),
      body: _favoriteController.favorites != null
          ? ListView.builder(
              itemCount: _favoriteController.favorites!.length,
              itemBuilder: (context, index) {
                FavoritesModel favorite = _favoriteController.favorites![index];
                return ListTile(
                  title: Text(favorite.title),
                  subtitle: Text(favorite.price),
                  leading: Image.asset(favorite.imageUrl),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _favoriteController.deleteFavorite(favorite.id);
                      _loadFavorites();
                    },
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: Bottom(
        selectedIndex: 1,
      ),
    );
  }
}
