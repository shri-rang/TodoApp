import 'package:flutter/material.dart';
import './HomePage.dart';

 main (){

runApp(MyApp());


}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo_List',
      theme: ThemeData(
        primarySwatch:Colors.red,
        accentColor: Colors.redAccent,
      ),
  


     home: HomePage()


    );
  }
}





