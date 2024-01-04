import 'package:flutter/material.dart';
import 'package:uicollection/donut/models/category_model.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          category.imgPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
