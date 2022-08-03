import 'package:anime_ui/Src/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anime_ui/Src/Constants/Colors.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      title: 'Anime List App',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AnimeUI.background,
        textTheme: GoogleFonts.sourceSansProTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
