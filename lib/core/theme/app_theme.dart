
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white,opacity: 0.9,size: 32.0),
    textTheme: GoogleFonts.openSansTextTheme(ThemeData.light().textTheme).copyWith(
      headline5: const TextStyle(color: Colors.white),
      bodyText1: const TextStyle(color: Colors.white60),
      bodyText2: const TextStyle(color: Colors.white60)
    ).apply(
      displayColor: Colors.white70
    ),    
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey.shade800,
      foregroundColor: Colors.white    
    )

  );

  static final lightTheme = ThemeData(    
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
      accentColor: Colors.greenAccent
    ),    
    iconTheme: const IconThemeData(color: Colors.white,opacity: 0.9,size: 32.0),
    textTheme: GoogleFonts.openSansTextTheme(ThemeData.light().textTheme),    
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.green.shade400,
      foregroundColor: Colors.white    
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.green,               
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light, // For Android
        statusBarBrightness: Brightness.dark, // For
      )
    )
  );


}