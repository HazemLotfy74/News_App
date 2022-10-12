import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';

class SearchProvider extends ChangeNotifier {


  List<ArticleModel> searchList = [];


  Future getAllSearchArticle(String value) async {
    var dio =await Dio().get('https://newsapi.org/v2/top-headlines?country=eg&sources&apiKey=2be8d46a9e4749b0b100254f80b03600&q=$value');
    print(dio.data);
    searchList=List<ArticleModel>.from(dio.data['articles'].map((e)=>ArticleModel.fromjson(e)));
    notifyListeners();
  }

}