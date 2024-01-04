import 'package:flutter/material.dart';
import 'package:uicollection/donut/data.dart';
import 'package:uicollection/donut/shared/donut_card.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      itemCount: donuts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1 / 1.5,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DonutCard(
          donut: donuts[index],
        );
      },
    );
  }
}
