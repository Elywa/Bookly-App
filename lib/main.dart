import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/contants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
            .textTheme), // هنا انا حطيت البرامتر اللى جو الفونت عشان هو جوه الباكدج بيستخدم الفونت من اللايت مود وانا هنا بستخدم الدارك مود
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
