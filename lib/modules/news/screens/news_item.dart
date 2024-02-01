
import 'package:flutter/material.dart';
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';

import '../model/news_model.dart';

class NewsItemWidget extends StatelessWidget {

  final NewsModel newsModel;
  const NewsItemWidget(this.newsModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                newsModel.jetpackFeaturedMediaUrl!,
              ),
              const SizedBox(height: 8),
              Text(
                newsModel.title?.rendered ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.green, 
                  fontSize: 18.px, 
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  newsModel.content?.rendered ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.blue[800]!, fontSize: 16.px, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: Icon(Icons.favorite_outline, size: 30)
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(99),
              ),
              child: Row(
                children: [
                  const Icon(Icons.lock_clock),
                  const SizedBox(width: 8),
                  Text(DateTime.now().toIso8601String())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}