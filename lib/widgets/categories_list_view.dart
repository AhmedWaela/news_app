import 'package:flutter/material.dart';
import 'package:yly_app/models/category_model.dart';
import 'package:yly_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  final List<CategoryModel> categories =
  [
    CategoryModel(
        categoryName: 'business',
        categoryImage: 'assets/images/business.jpeg'),
    CategoryModel(
        categoryName: 'entertainment',
        categoryImage: 'assets/images/entertaiment.avif'),
    CategoryModel(
        categoryName: 'health',
        categoryImage: 'assets/images/health.avif'),
    CategoryModel(
        categoryName: 'science',
        categoryImage: 'assets/images/science.avif'),
    CategoryModel(
        categoryName: 'technology',
        categoryImage: 'assets/images/technology.jpeg')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
