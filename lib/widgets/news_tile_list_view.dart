import 'package:flutter/material.dart';
import 'package:yly_app/models/article_model.dart';
import 'package:yly_app/widgets/news_tile.dart';

import '../screens/news_screen.dart';


class NewsTileListView extends StatelessWidget {
  NewsTileListView({required this.articles});
  List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return  GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) {
                return NewsScreen(articleModel: articles[index]);
              },
              )
              );
            },
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
