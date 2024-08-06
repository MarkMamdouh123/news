import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/views/news_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsView(),
    );
  }
}
