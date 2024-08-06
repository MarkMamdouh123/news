import 'package:flutter/material.dart';
import 'package:news/Widgets/news_item.dart';

import '../Models/article_model.dart';

class NewsTile extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsTile({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: NewsItem(articleModel: articles[index]),
        ),
        childCount: articles.length,
      ),
    );
  }
}
