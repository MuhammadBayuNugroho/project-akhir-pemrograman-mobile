import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page1.dart';
import 'package:flutter_app/pages/page2.dart';
import 'package:flutter_app/pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Shop',
      initialRoute: '/page1', // Halaman awal yang ditampilkan
      routes: {
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
        '/page3': (context) => const Page3(),
      },
    );
  }
}
