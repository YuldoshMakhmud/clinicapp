class NewsModel {
  final String title;
  final String shortDescription;
  final String fullfescription;
  final String imgUrl;
  final bool inApp;
  final String link;

  NewsModel(
      {required this.shortDescription,
      required this.fullfescription,
      required this.imgUrl,
      required this.title,
      required this.inApp,
      required this.link});
}
