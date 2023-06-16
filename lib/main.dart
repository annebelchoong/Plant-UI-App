import 'package:dataflowdevtest/routing/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'RobotoMono',
        scrollbarTheme: ScrollbarThemeData(
          // isAlwaysShown: true,
          interactive: true,
          thumbColor: MaterialStateProperty.all(const Color(0xFF244B3A)),
          radius: const Radius.circular(10.0),
        ),
      ),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
