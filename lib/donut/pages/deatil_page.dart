import 'package:flutter/material.dart';
import 'package:uicollection/donut/models/donut_model.dart';
import 'package:uicollection/donut/shared/bottom_nav_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.donut});

  final Donut donut;

  Widget ingredients() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          const Text(
            "Suger",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "8 Gram",
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 107, 107, 107),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 4,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: donut.color.withAlpha(70),
            child: const Text(
              "2%",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 24.0,
              ),
              decoration: BoxDecoration(
                color: donut.color.withAlpha(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        donut.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(
                      donut.imgPath,
                      fit: BoxFit.cover,
                      height: 230,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ingredients(),
                      ingredients(),
                      ingredients(),
                      ingredients(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    donut.details,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 107, 107, 107),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
