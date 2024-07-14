import 'package:flutter/material.dart';
import 'package:yly_app/models/category_model.dart';
import 'package:yly_app/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return CategoryScreen(category: categoryModel.categoryName);
        },));
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 16
        ),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                categoryModel.categoryImage
            ),
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
