import 'package:flutter/material.dart';

import 'news_category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.category,
  });

  final List<NewsCategoryItem> category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.29,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return category[index];
        },
        itemCount: category.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
