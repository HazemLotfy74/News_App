import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';


class BreakingNewsProvider extends ChangeNotifier {

  List<ArticleModel> breakingNewsList = [];

  Future getAllBreakingNews() async {
    var dio =await Dio().get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=2be8d46a9e4749b0b100254f80b03600');
    print(dio.data);
    breakingNewsList=List<ArticleModel>.from(dio.data['articles'].map((e)=>ArticleModel.fromjson(e)));
    notifyListeners();
  }


}