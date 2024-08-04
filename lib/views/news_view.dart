import 'package:flutter/material.dart';
import 'package:news/Models/news_categories_model.dart';
import 'package:news/Models/news_model.dart';
import 'package:news/Widgets/categories_list_view.dart';
import 'package:news/Widgets/news_category_item.dart';
import 'package:news/Widgets/news_item.dart';

import '../Widgets/news_tile.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key});
  List<NewsCategoryItem> category = [
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/business.avif', "Business"),
    ),
    NewsCategoryItem(
      newsCategories: NewsCategoriesModel(
          'assets/images/entertaiment.avif', "Entertainment"),
    ),
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/health.avif', "Health"),
    ),
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/science.avif', "Science"),
    ),
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/sports.avif', "Sports"),
    ),
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/technology.jpeg', "Technology"),
    ),
    NewsCategoryItem(
      newsCategories:
          NewsCategoriesModel('assets/images/general.avif', "General"),
    ),
  ];
  List<NewsItem> newsItem = [
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdasdsadasdasdassadsad", "asdsadsadasdasdsa"),
    ),
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdsadsadsadsaasdsad", "asdasdasdasdasdsadsadsadasd"),
    ),
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdsadsadsadsaasdsad", "asdasdasdasdasdsadsadsadasd"),
    ),
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdsadsadsadsaasdsad", "asdasdasdasdasdsadsadsadasd"),
    ),
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdsadsadsadsaasdsad", "asdasdasdasdasdsadsadsadasd"),
    ),
    NewsItem(
      newsModel: NewsModel('assets/images/technology.jpeg',
          "asdasdsadsadsadsaasdsad", "asdasdasdasdasdsadsadsadasd"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bugle',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(category: category),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsTile(newsItem: newsItem)
          ],
        ),
      ),
    );
  }
}
