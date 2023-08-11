import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/image_placeholder.dart';

class NewsCardImage extends StatelessWidget {
  final String thumbnail;
  const NewsCardImage({super.key, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return thumbnail == 'self'
        ? const IamgePlaceholder()
        : CachedNetworkImage(
            imageUrl: thumbnail,
            width: MediaQuery.of(context).size.width,
            height: 200,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => const IamgePlaceholder(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
  }
}
