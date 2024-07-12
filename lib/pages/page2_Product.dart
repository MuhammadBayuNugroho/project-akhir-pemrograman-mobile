import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page3.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Kolom extends StatefulWidget {
  const Kolom({super.key});
  @override
  State<Kolom> createState() => _KolomState();
}

class _KolomState extends State<Kolom> {
  bool isFavoriteJade = false;
  bool isFavoriteCactus = false;
  bool isFavoritePhilodendron1 = false;
  bool isFavoritePhilodendron2 = false;
  bool isFavoriteMontserra = false;

  Future<void> saveFavorite(String title, String price, String imageUrl) async {
    final supabase = Supabase.instance.client;
    final response = await supabase.from('favorites').insert({
      'title': title,
      'price': price,
      'image_url': imageUrl,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Favorite saved successfully'),
        duration: Duration(seconds: 2),
      ),
    );

    if (response.error != null) {
      print('Error saving favorite: ${response.error.message}');
    } else {
      debugPrint('Favorite saved successfully');
    }
  }

  Future<void> deleteFavorite(String title) async {
    final supabase = Supabase.instance.client;
    final response =
        await supabase.from('favorites').delete().eq('title', title);

    if (response.error != null) {
      print('Error deleting favorite: ${response.error!.message}');
    } else {
      print('Favorite deleted successfully');
    }
  }

  Future<void> saveCart(String title, String price, String imageUrl) async {
    final supabase = Supabase.instance.client;
    final response = await supabase.from('cart').insert({
      'title': title,
      'price': price,
      'image_url': imageUrl,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Product saved successfully'),
        duration: Duration(seconds: 2),
      ),
    );

    if (response.error != null) {
      print('Error saving favorite: ${response.error.message}');
    } else {
      print('Cart saved successfully');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //
                  // Jade Plant
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F4EF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        // Gambar
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Page3()), // Ganti NextPage() dengan halaman tujuan yang sesuai
                                );
                              },
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/img-5.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  // Ikon di atas kanan
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        if (isFavoriteJade) {
                                          deleteFavorite('Jade Plant');
                                        } else {
                                          saveFavorite(
                                              'Jade Plant',
                                              'Rp 100.000',
                                              'assets/images/img-5.png');
                                        }
                                        setState(() {
                                          isFavoriteJade = !isFavoriteJade;
                                        });
                                      },
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB5C9AD),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: isFavoriteJade
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: EdgeInsets.zero,
                                      child: Text(
                                        'Jade Plant',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF101828),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Rp 100.000',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF475E3E),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: GestureDetector(
                                  onTap: () {
                                    saveCart('Jade Plant', 'Rp 100.000',
                                        'assets/images/img-5.png');
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_7_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Philodendron
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F4EF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        // Gambar
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Page3()), // Ganti NextPage() dengan halaman tujuan yang sesuai
                                );
                              },
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/img-1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  // Ikon di atas kanan
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        if (isFavoritePhilodendron1) {
                                          deleteFavorite('Philodendron 1');
                                        } else {
                                          saveFavorite(
                                              'Philodendron 1',
                                              'Rp 200.000',
                                              'assets/images/img-1.png');
                                        }
                                        setState(() {
                                          isFavoritePhilodendron1 =
                                              !isFavoritePhilodendron1;
                                        });
                                      },
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB5C9AD),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: isFavoritePhilodendron1
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: EdgeInsets.zero,
                                      child: Text(
                                        'Philodendron 1',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF101828),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Rp 200.000',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF475E3E),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: GestureDetector(
                                  onTap: () {
                                    saveCart('Philodendron 1', 'Rp 200.000',
                                        'assets/images/img-1.png');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_7_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Tanaman
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F4EF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        // Gambar
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Page3()), // Ganti NextPage() dengan halaman tujuan yang sesuai
                                );
                              },
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/img-3.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  // Ikon di atas kanan
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        if (isFavoritePhilodendron2) {
                                          deleteFavorite('Philodendron 2');
                                        } else {
                                          saveFavorite(
                                              'Philodendron 2',
                                              'Rp 249.000',
                                              'assets/images/img-3.png');
                                        }
                                        setState(() {
                                          isFavoritePhilodendron2 =
                                              !isFavoritePhilodendron2;
                                        });
                                      },
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB5C9AD),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: isFavoritePhilodendron2
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: EdgeInsets.zero,
                                      child: Text(
                                        'Philodendron 2',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF101828),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Rp 249.000',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF475E3E),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: GestureDetector(
                                  onTap: () {
                                    saveCart('Philodendron 2', 'Rp 249.000',
                                        'assets/images/img-3.png');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_7_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //
                // Cactus
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F4EF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      // Gambar
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Page3()), // Ganti NextPage() dengan halaman tujuan yang sesuai
                              );
                            },
                            child: Stack(
                              children: [
                                // Gambar
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img-4.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                // Ikon di atas kanan
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (isFavoriteCactus) {
                                        deleteFavorite('Cactus');
                                      } else {
                                        saveFavorite('Cactus', 'Rp 99.000',
                                            'assets/images/img-4.png');
                                      }
                                      setState(() {
                                        isFavoriteCactus = !isFavoriteCactus;
                                      });
                                    },
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: isFavoriteCactus
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    margin: EdgeInsets.zero,
                                    child: Text(
                                      'Cactus',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: const Color(0xFF101828),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Rp 99.000',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: const Color(0xFF475E3E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: GestureDetector(
                                onTap: () {
                                  saveCart('Cactus', 'Rp 99.000',
                                      'assets/images/img-4.png');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB5C9AD),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.all(5),
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_7_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Monstera
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F4EF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      // Gambar
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Page3()), // Ganti NextPage() dengan halaman tujuan yang sesuai
                              );
                            },
                            child: Stack(
                              children: [
                                // Gambar
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img-2.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                // Ikon di atas kanan
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (isFavoriteMontserra) {
                                        deleteFavorite('Montserra 1');
                                      } else {
                                        saveFavorite(
                                            'Montserra 1',
                                            'Rp 129.000',
                                            'assets/images/img-2.png');
                                      }
                                      setState(() {
                                        isFavoriteMontserra =
                                            !isFavoriteMontserra;
                                      });
                                    },
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: isFavoriteMontserra
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    margin: EdgeInsets.zero,
                                    child: Text(
                                      'Monstera 1',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: const Color(0xFF101828),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Rp 129.000',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: const Color(0xFF475E3E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: GestureDetector(
                                onTap: () {
                                  saveCart('Montserra 1', 'Rp 129.000',
                                      'assets/images/img-2.png');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB5C9AD),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.all(5),
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_7_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Tanaman
              ],
            ),
          ),
        ],
      ),
    );
  }
}
