import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image ??
                'https://static.vecteezy.com/system/resources/previews/000/197/882/original/vector-news-headlines-background-with-earth-planet.jpg',
            fit: BoxFit.fill,
            height: 180,
            width: double.infinity,
          ),
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
