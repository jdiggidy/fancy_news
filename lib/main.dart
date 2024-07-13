import 'package:fancy_news/ui/widgets/rss_reader_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Fancy News',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: const RssReaderWidget(rssUrl: 'https://medium.com/feed/@ktuusj'),
    );
  }
}
