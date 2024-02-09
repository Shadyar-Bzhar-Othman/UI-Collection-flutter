import 'package:flutter/material.dart';
import 'package:uicollection/youtubelayout/pages/home_page.dart';

// Practise responsive design

class YoutubeLayoutApp extends StatelessWidget {
  const YoutubeLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
