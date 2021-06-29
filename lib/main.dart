import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Cahat ui',
      theme:
          ThemeData(
            textTheme: GoogleFonts.ptSerifCaptionTextTheme(Theme.of(context).textTheme),
            primarySwatch: Colors.red, accentColor: Color(0xFFffffd4)),
      home: HomeScreen(),
    );
  }
}
