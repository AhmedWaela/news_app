import 'package:flutter/material.dart';
import 'package:yly_app/models/article_model.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,vertical: 8
        ),
        child: ListView(
          children:  [
            articleModel.image != null ? Image.network(articleModel.image!):
            const Image(image: AssetImage('assets/images/nodata.jpeg'),),
            const SizedBox(
              height: 12,
            ),
             Text(
                 articleModel.title ,
               style: const TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 25
               ),
             ),
            const SizedBox(
              height: 8,
            ),
          articleModel.description != null ?
          Text(
            articleModel.description!,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 20
            ),
          ):
              const Text(''),
          ],
        ),
      ),
    );
  }
}
