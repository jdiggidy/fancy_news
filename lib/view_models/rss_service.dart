import 'dart:convert';
import 'package:fancy_news/models/rss_feed_item.dart';
import 'package:http/http.dart' as http;
import 'package:rss_dart/dart_rss.dart';

Future<List<RssFeedItem>> fetchRssFeed(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final feed = RssFeed.parse(utf8.decode(response.bodyBytes));
    return feed.items.map((item) => RssFeedItem(
      title: item.title ?? '',
      description: item.description ?? '',
      link: item.link ?? '',
    )).toList();
  } else {
    throw Exception('Failed to load RSS feed');
  }
}
