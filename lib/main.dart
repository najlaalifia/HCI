import 'package:baby_care/view/artikel.dart';
import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/jadwal.dart';
import 'package:baby_care/view/konten_edukasi.dart';
import 'package:baby_care/view/login.dart';
import 'package:baby_care/view/profile.dart';
import 'package:baby_care/view/registrasi.dart';
import 'package:baby_care/view/start.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/home.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          scaffoldBackgroundColor: Color.fromARGB(255, 116, 230, 238)),
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
