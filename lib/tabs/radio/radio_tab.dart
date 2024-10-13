
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami/tabs/settings/settings_provider.dart'; 



class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    
    final settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/${settingsProvider.backgroundImageName}.png',
            ),
            fit: BoxFit.cover, 
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset(
              'assets/images/radio_image.png', 
              height: 200, 
            ),
            SizedBox(height: 20), 

            // Radio Text
            Text(
              'إذاعة القرآن الكريم',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown, 
              ),
            ),
            SizedBox(height: 30), 

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {
                   
                  },
                  color: Colors.brown, 
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                  
                  },
                  iconSize: 50, 
                  color: Colors.brown,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    
                  },
                  color: Colors.brown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

