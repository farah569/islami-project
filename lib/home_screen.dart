// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget{
//   static const String routeName = '/home' ;

//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(icon: ImageIcon(
//           AssetImage('assets/images/quran_icon.png')
//         ))

//       ],),
//     )
//   }


// }

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   static const String routeName = '/home';

// int currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(

//         currentIndex:currentIndex,
//         onTap: (index){
//           currentIndex=index;
//           setState(() {});
//         },

//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.brown,
//         items: const [
//           BottomNavigationBarItem(

//             icon: ImageIcon(
//               AssetImage('assets/images/icon_quran.png'),
//             ),
//             label:'Quran',
          
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_hadeth.png'),
//             ),
//             label:'Hadeth',
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_sebha.png'),
//             ),
//             label:'Sebha',
//           ),
//             BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_radio.png'),
//             ),
//             label:'Radio',
//           ),
//             BottomNavigationBarItem(
//             icon: Icon(Icons.settings_outlined),
//             label:'Settings',
//             ),
          
          

//         ],
//       ),
//     );
//   }
  
 
// }

// import 'package:flutter/material.dart';
// import 'package:islami/tabs/hadeth/hadeth_tab.dart';
// import 'package:islami/tabs/quran/quran_tab.dart';
// import 'package:islami/tabs/radio/radio_tab.dart';
// import 'package:islami/tabs/sebha/sebha_tab.dart';
// import 'package:islami/tabs/settings/settings_tab.dart';

// class HomeScreen extends StatefulWidget {
//   static const String routeName = '/home';

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int currentIndex = 0;
//   List<Widget>tabs=[
//     QuranTab(),
//     HadethTab(),
//     SebhaTab(),
//     RadioTab(),
//     SettingsTab(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage('assets/images/default_bg.png'))
//       ),
//     )
  
//     child: Scaffold(
//       appBar: AppBar(

//         title: Text('اسلامي'),
//       ),
//       body: tabs[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.brown,
//         items: const [
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_quran.png'),
//             ),
//             label: 'Quran',
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_hadeth.png'),
//             ),
//             label: 'Hadeth',
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_sebha.png'),
//             ),
//             label: 'Sebha',
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               AssetImage('assets/images/icon_radio.png'),
//             ),
//             label: 'Radio',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings_outlined),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.cover, 
        ),
      ),
      child: Scaffold( 
        appBar: AppBar(
          title: const Text('اسلامي'),
        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.brown,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_quran.png'),
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
