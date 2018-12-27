import 'package:flutter/material.dart';
import 'package:netflix_clone/src/screens/home-screen.dart';

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black
      ),
      home: HomeScreen(),
    );
  }

}