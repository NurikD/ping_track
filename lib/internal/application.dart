import 'package:flutter/material.dart';
import 'package:ping_track/presentation/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainShell(),
    );
  }
}