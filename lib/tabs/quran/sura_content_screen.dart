
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:islami/app_theme.dart';
// import 'package:islami/tabs/quran/quran_tab.dart';
// import 'package:islami/tabs/settings/settings_provider.dart';
// import 'package:islami/widgets/loading_indicator.dart';
// import 'package:provider/provider.dart';

// class SuraContentScreen extends StatefulWidget {
//   static const String routeName = '/sura_content';

//   @override
//   State<SuraContentScreen> createState() => _SuraContentScreenState();
// }

// class _SuraContentScreenState extends State<SuraContentScreen> {
//   List<String> ayat = [
//     'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ',
//     'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
//     'الرَّحْمَنِ الرَّحِيمِ',
//     'مَالِكِ يَوْمِ الدِّينِ',
//     'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
//     'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
//     'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
//   ];

//   late SuraContentArgs args;

//   @override
//   Widget build(BuildContext context) {
//      args= ModalRoute.of(context)!.settings.arguments as SuraContentArgs;
//      if (ayat.isEmpty){
//       loadSuraFile();
//      }
     
//      SettingsProvider settingsProvider =Provider.of<SettingsProvider>(context);
    
    
//     return Container(
//       decoration:  BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(
//         'assets/images/${Provider.of<SettingsProvider>(context).backgroundImageName}.png',
//          ),
//           fit: BoxFit.fill,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent, 
//         appBar: AppBar(
//           title: Text(args.suraName),
//         ),
//         body:Container(
//           padding: EdgeInsets.all(24) ,
//           margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height*0.25,
//           horizontal: 24,),
//           decoration: BoxDecoration(color:
//           SettingsProvider.isDark ? AppTheme.darkPrimary: AppTheme.white,
//           borderRadius: BorderRadius.all(Radius.circular(25),
//           )
//           ),
//            child:
//            ayat.isEmpty? LoadingIndicator()
//            : ListView.builder(
//           itemBuilder: (_, index) => Text(
//             ayat[index],
//             style: Theme.of(context).textTheme.titleLarge,
//             textAlign: TextAlign.center, 
//           ),
//           itemCount: ayat.length,
//         ),
//         ),
      
//       ),
//     );
//   }

//    Future <void> loadSuraFile() async{
//     await Future.delayed(Duration(seconds: 1));
//     String sura = await rootBundle.loadString('assets/text/${args.index + 1}.txt');
//     ayat= sura.split('\r\n');
//     setState(() {});

//     }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:islami/widgets/loading_indicator.dart';
import 'package:provider/provider.dart';

class SuraContentScreen extends StatefulWidget {
  static const String routeName = '/sura_content';

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  List<String> ayat = [
    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ',
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
    'الرَّحْمَنِ الرَّحِيمِ',
    'مَالِكِ يَوْمِ الدِّينِ',
    'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
    'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
    'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
  ];

  late SuraContentArgs args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraContentArgs;
    loadSuraFile();

    
    final settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/${settingsProvider.backgroundImageName}.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.25,
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            color: settingsProvider.isDark ? AppTheme.darkPrimary : AppTheme.white, 
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: ayat.isEmpty ? LoadingIndicator() : ListView.builder(
            itemBuilder: (_, index) => Text(
              ayat[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            itemCount: ayat.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadSuraFile() async {
    await Future.delayed(Duration(seconds: 1));
    String sura = await rootBundle.loadString('assets/text/${args.index + 1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}

