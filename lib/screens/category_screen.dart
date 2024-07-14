import 'package:flutter/material.dart';
import 'package:yly_app/widgets/news_lit_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 50,),),
              NewsListViewBuilder(category: category)]),
      ),

    );
  }
}
