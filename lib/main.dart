import 'package:flutter/material.dart';
import 'package:uicollection/donut/donut.dart';

// Which UI you want just call the folder name with first letter capital and add "App" to it
// Example: if you want donut app just call this "DonutApp()"

void main() {
  runApp(const UICollection());
}

class UICollection extends StatelessWidget {
  const UICollection({super.key});

  @override
  Widget build(BuildContext context) {
    return const DonutApp();
  }
}
