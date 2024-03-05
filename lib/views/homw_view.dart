import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_listView.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange, fontSize: 30),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
              // SliverToBoxAdapter(
              //   child: NewsListView(),
              // ),
            ],
          )
          // Column(
          //   children: [
          //     CategoryListView(),
          //     SizedBox(
          //       height: 32,
          //     ),
          //     Expanded(child: NewsListView()),
          //   ],
          // ),
          ),
    );
  }
}
