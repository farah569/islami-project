
import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  double rotationAngle = 0.0;

  String getCurrentText() {
    int textIndex = (count ~/ 33) % 3; 
    switch (textIndex) {
      case 0:
        return 'سبحان الله';
      case 1:
        return 'الحمد لله';
      case 2:
        return 'الله أكبر';
      default:
        return 'سبحان الله'; 
    }
  }

  void incrementCount() {
    setState(() {
      count++;
      rotationAngle += 0.1; 
    });
  }

  @override
  Widget build(BuildContext context) {
   
    final settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/${settingsProvider.backgroundImageName}.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            SizedBox(height: 30), 
            Image.asset(
              'assets/images/head_sebha_logo.png',
            ),
            Transform.rotate(
              angle: rotationAngle,
              child: Image.asset(
                'assets/images/body_sebha_logo.png', 
                height: 200, 
              ),
            ),
           
            SizedBox(height: 30),
            Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 30),
           
            Container(
              padding: EdgeInsets.all(10), 
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(10), 
              ),
              child: Text(
                '$count',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: 
                  settingsProvider.isDark ? AppTheme.lightPrimary : AppTheme.black 
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: incrementCount,
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 36, 36),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    getCurrentText(), 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}















