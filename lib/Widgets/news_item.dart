import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/Models/news_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.newsModel});

  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                newsModel.image,
              ),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text(
          newsModel.text,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        Text(
          newsModel.descriptionText,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey),
        ),
      ],
    );
  }
}
