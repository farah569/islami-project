
import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/tabs/hadeth/hadeth_content_screen.dart';
import 'package:islami/tabs/quran/sura_content_screen.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart'; 

void main() 
{
  runApp(
    ChangeNotifierProvider(create: (_)=> SettingsProvider(),
    child: IslamiApp(),
    ),
   
    );
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =Provider.of<SettingsProvider>(context);
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
      themeMode: settingsProvider.themeMode,
    );
  }
}
