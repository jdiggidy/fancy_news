import 'package:flutter/material.dart';
import 'package:fancy_news/models/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            article.title,
            style: TextStyle(
              fontSize: 16,
              color: article.isRead
                  ? Theme.of(context).colorScheme.outline.withAlpha(150)
                  : null,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            article.content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              color: Theme.of(context).colorScheme.outline.withAlpha(
                    article.isRead ? 120 : 255,
                  ),
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   article.feed.value?.title ?? '',
              //   style: TextStyle(
              //     fontSize: 12,
              //     color: Theme.of(context).colorScheme.secondary.withAlpha(
              //           article.isRead ? 120 : 255,
              //         ),
              //   ),
              // ),
              Spacer(),
              // if (post.favorite)
              //   Container(
              //     width: 24,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(12),
              //       color: Theme.of(context).colorScheme.primaryContainer,
              //     ),
              //     child: Icon(
              //       Icons.bookmark_rounded,
              //       size: 16,
              //       color: Theme.of(context).colorScheme.secondary.withAlpha(
              //             post.read ? 120 : 255,
              //           ),
              //     ),
              //   ),
              SizedBox(width: 8),
              // Text(
              //   post.pubDate.toLocal().toString().substring(0, 16),
              //   style: TextStyle(
              //     fontSize: 12,
              //     color: Theme.of(context).colorScheme.secondary.withAlpha(
              //           post.read ? 120 : 255,
              //         ),
              //   ),
              // ),
            ],
          ),
        ],
      
      ),
    );   
  }
}