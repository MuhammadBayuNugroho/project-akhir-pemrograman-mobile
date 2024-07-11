import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// Product Buying Right Now
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 233, 233, 233),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/img-5.png',
                      ),
                      fit: BoxFit
                          .cover, // Gambar akan mengikuti lebar dan tinggi kotak
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFB5C9AD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(
                              context); // Kembali ke halaman sebelumnya
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/vectors/vector_15_x2.svg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFB5C9AD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/vectors/vector_5_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 420),
                  height: 315, // Tinggi container atas
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33282828),
                        blurRadius: 5,
                      ),
                    ],
                    color: Color.fromARGB(255, 250, 250, 250),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      // Gambar dan icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jade Plant',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: const Color(0xFF101828),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  '\Rp 100.000',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF475E3E),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 15,
                                      height: 15,
                                      child: SvgPicture.network(
                                        'assets/vectors/vector_1_x2.svg',
                                      ),
                                    ),
                                    Text(
                                      '4.8',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: const Color(0xFF101828),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 25, 0, 0),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: const Color(0xFFF0F4EF),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x33000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 7,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Tambahkan logika untuk penambahan jumlah di sini
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      width: 28,
                                      height: 28,
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xFF667085),
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '1', // Nilai jumlah bisa diambil dari variabel atau state
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: const Color(0xFF101828),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Tambahkan logika untuk pengurangan jumlah di sini
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFB5C9AD),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      width: 28,
                                      height: 28,
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color(0xFF667085),
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Kolom Deskripsi
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: Text(
                              'About Plant',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xFF101828),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              'The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFF98A2B3),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Tombol Buy Now
                      Container(
                        width: 340,
                        margin: EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF475E3E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFFFCFCFD),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
