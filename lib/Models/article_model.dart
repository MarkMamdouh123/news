class ArticleModel {
  ArticleModel(
      {required this.image,
      required this.title,
      required this.descriptionText});
  final String? image;
  final String title;
  final String? descriptionText;

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        descriptionText: json['description']);
  }
}
