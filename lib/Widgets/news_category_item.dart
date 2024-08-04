import 'package:flutter/material.dart';
import 'package:news/Models/news_categories_model.dart';

class NewsCategoryItem extends StatelessWidget {
  const NewsCategoryItem({super.key, required this.newsCategories});
  final NewsCategoriesModel newsCategories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          newsCategories.image,
        ),
        Text(
          newsCategories.text,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ],
    );
  }
}
