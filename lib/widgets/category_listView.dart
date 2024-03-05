// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/entertaiment.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategforyCard(
              category: categories[index],
            );
          }),
    );
  }
}
