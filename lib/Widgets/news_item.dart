import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../views/web_view_page.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewPage(url: articleModel.url),
                ),
              );
            },
            child: articleModel.image != null
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
                : const Image(image: AssetImage('assets/images/temp.webp'))),
        const SizedBox(
          height: 23,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          articleModel.descriptionText ?? "",
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
