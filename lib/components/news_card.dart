import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/news_card_image.dart';
import 'package:flutter_course_final/components/news_text.dart';
import 'package:flutter_course_final/models/news/news.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      margin: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsCardImage(
              thumbnail: news.thumbnail,
            ),
            NewsText(news: news)
          ],
        ),
      ),
    );
  }
}
