import 'package:flutter_app/pages/page_cart.dart';
import 'package:flutter_app/pages/page2.dart';
import 'package:flutter_app/pages/page_profile.dart';
import 'page_favorite.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  final int selectedIndex; // Tambahkan variabel selectedIndex
  Bottom(
      {super.key,
      required this.selectedIndex}); // Tambahkan selectedIndex ke dalam constructor

  @override
  // ignore: library_private_types_in_public_api
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Page2()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FavoritePage()),
        );
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartPage()),
        );
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 375, // Lebar yang diinginkan
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black45,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black45),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.black45),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black45),
              label: 'Profile',
            ),
          ],
          currentIndex:
              widget.selectedIndex, // Gunakan selectedIndex dari widget
          selectedItemColor: const Color.fromARGB(255, 56, 117, 74),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
