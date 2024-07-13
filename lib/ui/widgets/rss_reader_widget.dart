import 'package:flutter/material.dart';
import 'package:fancy_news/models/rss_feed_item.dart' as feed_item;
import 'package:fancy_news/view_models/rss_service.dart';

class RssReaderWidget extends StatefulWidget {
  final String rssUrl;

  const RssReaderWidget({super.key, required this.rssUrl});
  @override 
  _RssReaderState createState() => _RssReaderState();

}

class _RssReaderState extends State<RssReaderWidget> {
  late Stream<List<feed_item.RssFeedItem>> _rssStream;

  @override
  void initState() {
    super.initState();
    _rssStream = Stream.fromFuture(fetchRssFeed(widget.rssUrl));
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fancy News'),
      ),
      body: StreamBuilder<List<feed_item.RssFeedItem>> (
        stream: _rssStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<feed_item.RssFeedItem> rssItems = snapshot.data!;
            return ListView.builder(
              itemCount: rssItems.length,
              itemBuilder: (context, index) {
                feed_item.RssFeedItem item = rssItems[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                  onTap: () {
                    // handle tap here
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}