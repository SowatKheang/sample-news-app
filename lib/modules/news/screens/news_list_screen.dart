
import 'package:flutter/material.dart';
import 'package:flutter_news_application/core/extension/device_helper_extension.dart';
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';

import 'news_item.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {

  @override
  Widget build(BuildContext context) {

    if (DeviceHelper.getInstance().isMobile) {
      return ListView(
        padding: const EdgeInsets.all(8),
        children: List.generate(10, (index) {
          return const NewsItemWidget();
        }),
      );
    }

    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.2,
      padding: const EdgeInsets.all(8),
      children: List.generate(10, (index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: NewsItemWidget(),
        );
      }),
    );

  }
}