
import 'package:flutter/material.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({super.key});

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
                "https://miro.medium.com/v2/resize:fit:1200/1*548nO8r4GedmGNTuGN4N6w.png"
              ),
              const SizedBox(height: 8),
              const Text(
                "Google News",
                style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.blue[800]!, fontSize: 16, fontWeight: FontWeight.bold),
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