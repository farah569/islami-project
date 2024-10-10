//import 'package:flutter/material.dart';
// import 'package:islami/home_screen.dart';


// void main() {
//   runApp(const slamiApp());
// }

// class IslamiApp extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes:{
//         HomeScreen.routeName : (_) => HomeScreen(),
//       },
//       initialRoute: HomeScreen.routeName ,

//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/tabs/hadeth/hadeth_content_screen.dart';
import 'package:islami/tabs/quran/sura_content_screen.dart'; // Ensure this path is correct

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraContentScreen.routeName:(_)=> SuraContentScreen(),
        HadethContentScreen.routeName:(_)=> HadethContentScreen(),
      },
      initialRoute: HomeScreen.routeName , 
      theme: AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme ,
      themeMode: ThemeMode.light,
    );
  }
}
