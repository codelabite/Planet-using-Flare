import 'package:flutter/material.dart';
import 'package:theplanet/Screen/Screens.dart';

void main(){
  runApp(FireBaseApp());
}

class FireBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FireBaseApp",
      theme: ThemeData(
        fontFamily: 'CaviarDreams',
          primarySwatch: Colors.cyan,
          canvasColor: Colors.cyan[50]
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
