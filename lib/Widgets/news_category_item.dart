import 'package:flutter/material.dart';
import 'package:news/Models/news_categories_model.dart';
import 'package:news/views/category_view.dart';

class NewsCategoryItem extends StatelessWidget {
  const NewsCategoryItem({super.key, required this.newsCategories});
  final NewsCategoriesModel newsCategories;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: newsCategories.text,
              );
            },
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            newsCategories.image,
          ),
          Text(
            newsCategories.text,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
