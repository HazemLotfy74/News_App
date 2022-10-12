import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';

class SportsProvider extends ChangeNotifier {

  List<ArticleModel> sportList = [];



  Future getAllSportsNews() async {
      var dio = await Dio().get('https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=9049eb51fa5f470baa629aeddc4b5e25');
      sportList=List<ArticleModel>.from(dio.data['articles'].map((e)=>ArticleModel.fromjson(e)));
      notifyListeners();
      print(dio.data);
  }

}