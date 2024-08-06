import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';

import '../services/news_service.dart';
import 'news_tile.dart';

class NewsTileBuilder extends StatefulWidget {
  @override
  State<NewsTileBuilder> createState() => _NewsTileBuilderState();
  final String category;
  const NewsTileBuilder({super.key, required this.category});
}

class _NewsTileBuilderState extends State<NewsTileBuilder> {
  var future;

  @override
  void initState() {
    future = NewsService(dio: Dio()).getTopHeadlines(category: widget.category);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return NewsTile(articles: snapShot.data ?? []);
        } else if (snapShot.hasError) {
          return const SliverFillRemaining(
              child: Text("Oops there is an error"));
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
