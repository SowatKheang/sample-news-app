
import 'package:flutter/material.dart';
import 'package:flutter_news_application/core/extension/device_helper_extension.dart';
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';
import '../model/news_model.dart';
import '../service/news_service.dart';
import 'news_item.dart';

enum LoadingState { loading, success, error }

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {

  LoadingState loadingState = LoadingState.loading;

  List<NewsModel> news = [];

  @override
  void initState() {
    _loadNews();
    super.initState();
  }

  void _loadNews() {
    setState(() {
      loadingState = LoadingState.loading;
    });
    NewsService.instance.getList({}).then((newList) {
      setState(() {
        news = newList;
        loadingState = LoadingState.success;
      });
    }).catchError((error) {
      setState(() {
        loadingState = LoadingState.error;
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {
    switch (loadingState) {
      case LoadingState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case LoadingState.success:
        if (DeviceHelper.getInstance().isMobile) {
            return ListView(
            padding: const EdgeInsets.all(8),
              children: List.generate(news.length, (index) {
                return NewsItemWidget(news[index]);
              }),
            );
          }

          return GridView.count(
            padding: const EdgeInsets.all(8),
            crossAxisCount: 3,
            childAspectRatio: 1.2,
            children: List.generate(news.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: NewsItemWidget(news[index]),
              );
            }),
          );
      case LoadingState.error:
        return const Center(
          child: Text('Failed to load data!'),
        );
    }

  }
}