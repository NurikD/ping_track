import 'package:flutter/material.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pinger',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
          children: [
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xff201F20),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(),
            )),
            Expanded(child: Container())
          ],
        ),
    );
  }
}
