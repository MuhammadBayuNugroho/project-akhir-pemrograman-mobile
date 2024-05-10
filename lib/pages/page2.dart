import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page2_Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 20, 10),
        height: 812,
        width: 375,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 233, 233, 233),
          boxShadow: [
            BoxShadow(
              color: Color(0x33282828),
              offset: Offset(9, 10),
              blurRadius: 8,
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header dengan Lonceng Notifikasi
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFFD9D9D9),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/img-profil.jpeg',
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: 45,
                      height: 45,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: const Color(0xFF98A2B3),
                              ),
                            ),
                            Text(
                              'Bayu.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: const Color(0xFF344054),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 170),
                          child: IconButton(
                            onPressed: () {},
                            icon: SizedBox(
                              width: 25,
                              height: 25,
                              child: SvgPicture.network(
                                'assets/vectors/group_1_x2.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Lokasi Tempat Tinggal
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    width: 12,
                    height: 14,
                    child: SizedBox(
                      width: 12,
                      height: 14,
                      child: SvgPicture.network(
                        'assets/vectors/vector_19_x2.svg',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 10, 0),
                    child: Text(
                      'Jepara, Indonesia',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xFF98A2B3),
                      ),
                    ),
                  ),
                ],
              ),

              // Search Bar
              Container(
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(16, 9.5, 16, 9.5),
                      hintText: 'Search here',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF98A2B3),
                      ),
                      prefixIcon: Container(
                        margin: const EdgeInsets.fromLTRB(15, 2, 12, 2),
                        width: 16,
                        height: 16,
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: SvgPicture.network(
                            'assets/vectors/vector_6_x2.svg',
                          ),
                        ),
                      ),
                      suffixIcon: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        width: 16,
                        height: 16,
                        child: IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            width: 16,
                            height: 16,
                            child: SvgPicture.network(
                              'assets/vectors/group_x2.svg',
                            ),
                          ),
                        ),
                      ),
                      border: InputBorder.none, // Menghilangkan border
                    ),
                  ),
                ),
              ),

              // Kategori
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Category',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color(0xFF344054),
                    ),
                  ),
                ),
              ),

              // Pilih Kategori
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF475E3E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: Text(
                          'All',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color(0xFFFCFCFD),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFD0D5DD)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: Text(
                          'Indoor',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromARGB(255, 196, 200, 207),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFD0D5DD)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: Text(
                          'Outdoor',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromARGB(255, 196, 200, 207),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFD0D5DD)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: Text(
                          'Cactus',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromARGB(255, 196, 200, 207),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Kolom Gambar
              const Kolom(),

              // Navigasi
            ],
          ),
        ),
      ),
    );
  }
}
