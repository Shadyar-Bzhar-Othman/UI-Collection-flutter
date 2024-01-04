import 'package:flutter/material.dart';
import 'package:uicollection/donut/pages/home_page.dart';

// Redesign - https://dribbble.com/shots/19649140-App-UI

class DonutApp extends StatelessWidget {
  const DonutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
