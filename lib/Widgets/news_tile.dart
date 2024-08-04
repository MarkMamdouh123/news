import 'package:flutter/material.dart';

import 'news_item.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.newsItem,
  });

  final List<NewsItem> newsItem;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => newsItem[index],
        childCount: newsItem.length,
      ),
    );
  }
}
