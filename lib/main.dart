import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page1.dart';
import 'package:flutter_app/pages/page2.dart';
import 'package:flutter_app/pages/page3.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://vczypsfsrzaswfjsfkao.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZjenlwc2Zzcnphc3dmanNma2FvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA1MDQ4MzAsImV4cCI6MjAzNjA4MDgzMH0._x1-nxwsLTvqZT2bHJpVCvffz_kGwjIn2PM8OiM2DNk',
  );

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
