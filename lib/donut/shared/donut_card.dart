import 'package:flutter/material.dart';
import 'package:uicollection/donut/models/donut_model.dart';
import 'package:uicollection/donut/pages/deatil_page.dart';

class DonutCard extends StatelessWidget {
  const DonutCard({super.key, required this.donut});

  final Donut donut;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(donut: donut),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: donut.color.withAlpha(20),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: donut.color.withAlpha(60),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Text(
                  "\$${donut.price}",
                  style: TextStyle(
                    fontSize: 18,
                    color: donut.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Image.asset(
              donut.imgPath,
              fit: BoxFit.cover,
              width: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              donut.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Dunkin's",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
