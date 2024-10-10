import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';

class HadethContentScreen extends StatelessWidget {
 static const String routeName= '/hadeth-content';

  @override
  Widget build(BuildContext context) {
      Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    
    
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, 
        appBar: AppBar(
          title: Text(hadeth.title),
        ),
        body:Container(
          padding: EdgeInsets.all(24) ,
          margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height*0.25,
          horizontal: 24,),
          decoration: BoxDecoration(color: AppTheme.white,
          borderRadius: BorderRadius.all(Radius.circular(25),
          )
          ),
           child:
           
            ListView.builder(
          itemBuilder: (_, index) => Text(
            hadeth.content[index],
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center, 
          ),
          itemCount: hadeth.content.length,
        ),
        ),
      
      ),
    );
  }
}