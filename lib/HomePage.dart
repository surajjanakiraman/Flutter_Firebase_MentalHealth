import 'package:flutter/material.dart';
import 'package:flutter_side_menu/screens/main_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome!",
      home: MainMenu(),
    );
  }
}
