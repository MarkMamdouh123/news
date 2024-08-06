import 'package:flutter/material.dart';
import 'package:news/Widgets/news_tile_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [NewsTileBuilder(category: category)],
      ),
    );
  }
}
