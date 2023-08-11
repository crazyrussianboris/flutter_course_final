import 'package:flutter/material.dart';
import 'package:flutter_course_final/models/news/news.dart';

class NewsText extends StatelessWidget {
  final News news;
  const NewsText({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            news.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          if (news.selftext.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15.0),
                Text(news.selftext, overflow: TextOverflow.ellipsis),
              ],
            ),
        ],
      ),
    );
  }
}
