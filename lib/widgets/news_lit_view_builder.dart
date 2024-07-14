import 'package:flutter/material.dart';
import 'package:yly_app/models/article_model.dart';
import 'package:yly_app/widgets/news_tile_list_view.dart';
import '../services/news_service.dart';


class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
  future =  NewsService().getTopHeadlineNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return const Text('there was an error');
          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return const SliverToBoxAdapter(
              child: Center(
                  child: CircularProgressIndicator()
              ),
            );
          }
          return NewsTileListView(
            articles: snapshot.data ?? [],
          );
        },
    );
  }
}
