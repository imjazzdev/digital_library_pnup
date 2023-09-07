import 'package:digital_library_pnup/pages/splash_screen.dart';
import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      title: 'Digital Library PNUP',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          scaffoldBackgroundColor: Color(0xFFF8F8F8),
          primaryColor: ColorSelect.secondaryButtonColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF8F8F8),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}
