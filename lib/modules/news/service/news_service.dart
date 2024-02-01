
import 'package:flutter/material.dart';
import 'package:flutter_news_application/modules/news/model/news_model.dart';
import '../../../core/service/http_service.dart';

class NewsService {

  NewsService._();

  static final NewsService _instance = NewsService._();

  static NewsService get instance => _instance;

  Future<List<NewsModel>> getList(Map<String, dynamic> queryParameters) async {
    List<NewsModel> news = [];
    try {
      return await HttpService.instance.get(HttpService.NEWS_API, null, queryParameters).then((res) {
        if (res.data != null) {
          news = List<NewsModel>.from(res.data.map((value) => NewsModel.fromJson(value)));
        }
        return news;
      });
    } catch (ex, stacktrace) {
      debugPrint(ex.toString());
      debugPrint('$stacktrace');
      return news;
    }

  }

}