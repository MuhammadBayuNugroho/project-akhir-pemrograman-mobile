import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/cart_controller.dart';
import 'package:flutter_app/models/cart_model.dart'; // Import CartModel instead of FavoriteModel
import 'package:flutter_app/pages/bottomNavigation.dart'; // Adjust to your navigation setup

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartController _cartController = CartController();

  @override
  void initState() {
    super.initState();
    _loadCart();
  }

  Future<void> _loadCart() async {
    await _cartController.getCart();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: _cartController.cart != null
          ? ListView.builder(
              itemCount: _cartController.cart!.length,
              itemBuilder: (context, index) {
                CartModel cart = _cartController.cart![index];
                return ListTile(
                  title: Text(cart.title),
                  subtitle: Text(cart.price),
                  leading: Image.asset(cart.imageUrl),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _cartController.deleteCart(cart.id);
                      _loadCart();
                    },
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: Bottom(selectedIndex: 2),
    );
  }
}
