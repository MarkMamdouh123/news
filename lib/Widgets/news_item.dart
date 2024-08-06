import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        articleModel.image != null
            ? Container(
                height: 234,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(articleModel.image!),
                  ),
                ),
              )
            : Text(
                "No Image",
                style: TextStyle(fontSize: 23),
              ),
        SizedBox(
          height: 23,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          articleModel.descriptionText ?? "",
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
