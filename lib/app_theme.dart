import 'package:flutter/material.dart';
 class AppTheme {

static const Color lightPrimary =Color(0xFFB7935F);
static const  Color darkPrimary = Color(0xFF141A2E);
static const Color white =Color(0xFFF8F8F8);
static const Color dark =Color(0xFF242424);
static const Color gold =Color(0xFFFACC1D);

static ThemeData lightTheme =ThemeData(primaryColor: lightPrimary,
appBarTheme: AppBarTheme(
  centerTitle: true,
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.black,
 // iconTheme: IconThemeData(color:Colors.blue ),
  titleTextStyle: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  )
),
scaffoldBackgroundColor: Colors.transparent,
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  type: BottomNavigationBarType.fixed,
  backgroundColor: lightPrimary,
  selectedItemColor: Colors.black,
  unselectedItemColor: white,
),
textTheme: TextTheme(

  headlineSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black),
  titleLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),

)

);




static ThemeData darkTheme =ThemeData(primaryColor: darkPrimary);

 





 }