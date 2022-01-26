import 'package:flutter/material.dart';
import 'package:prueba/Screens/Home/HomeScreen.dart';
import 'package:prueba/constants.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lugareños',
      theme: ThemeData(
          fontFamily: 'AmazingSlab',
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
