import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yly_app/models/article_model.dart';

class NewsService{
  NewsService();

  final Dio dio = Dio();
   Future<List<ArticleModel>> getTopHeadlineNews({required category}) async {
     try{
       Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=607499d1b535446ab2ed641093c9610f&category=$category');
       Map<String,dynamic> jsonData = response.data;
       List articles = jsonData['articles'];
       List<ArticleModel> articlesList =
       [

       ];
       for(var article in articles){
         ArticleModel articleModel = ArticleModel.fromJson(article);
         articlesList.add(articleModel);
       }
       return articlesList;
     }catch(e){
       return [];
     }
  }
}