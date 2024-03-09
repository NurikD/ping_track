import 'package:flutter/material.dart';
import 'package:ping_track/project/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff121112),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff121112))
      ),
      home: const MainShell(),
    );
  }
}