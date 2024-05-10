import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Kolom extends StatelessWidget {
  const Kolom({super.key});

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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
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
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_16_x2.svg',
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
                                    // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                      child: SvgPicture.network(
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
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
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_13_x2.svg',
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
                                        'Philodendron',
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
                                    // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                      child: SvgPicture.network(
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  // Gambar
                                  Expanded(
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
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
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_13_x2.svg',
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
                                        'Philodendron',
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
                                    // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                      child: SvgPicture.network(
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
                            onTap: () {},
                            child: Stack(
                              children: [
                                // Gambar
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
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
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.network(
                                        'assets/vectors/vector_13_x2.svg',
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
                                  // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                    child: SvgPicture.network(
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
                            onTap: () {},
                            child: Stack(
                              children: [
                                // Gambar
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
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
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.network(
                                        'assets/vectors/vector_16_x2.svg',
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
                                      'Monstera',
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
                                  // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                    child: SvgPicture.network(
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
                            onTap: () {},
                            child: Stack(
                              children: [
                                // Gambar
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
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
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.network(
                                        'assets/vectors/vector_16_x2.svg',
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
                                      'Monstera',
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
                                  // Aksi yang ingin Anda lakukan ketika tombol diklik
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
                                    child: SvgPicture.network(
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
        ],
      ),
    );
  }
}
