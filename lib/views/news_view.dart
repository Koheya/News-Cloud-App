import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  'https://static.vecteezy.com/system/resources/previews/000/197/882/original/vector-news-headlines-background-with-earth-planet.jpg',
              fit: BoxFit.fill,
              height: 200,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
