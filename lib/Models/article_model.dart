class ArticleModel {
  ArticleModel(
      {required this.image,
      required this.title,
      required this.descriptionText,
      required this.url});
  final String? image;
  final String title;
  final String? descriptionText;
  final String url;

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      descriptionText: json['description'],
      url: json['url'],
    );
  }
}
