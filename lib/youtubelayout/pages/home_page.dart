import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final bool isMobile = screenWidth < 500;

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text(isMobile ? "M O B I L E" : "D E S K T O P"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: isMobile
            ? Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 120,
                        color: Colors.deepPurple[300],
                        margin: const EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index) => Container(
                              width: double.infinity,
                              height: 120,
                              color: Colors.deepPurple[300],
                              margin: const EdgeInsets.only(bottom: 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 200,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.deepPurpleAccent,
                        margin: const EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
