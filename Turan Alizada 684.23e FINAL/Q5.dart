import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}

class Article {
  const Article({
    required this.title,
    required this.author,
  });

  final String title;
  final String author;
}

class NetworkException implements Exception {
  const NetworkException(this.message);

  final String message;

  @override
  String toString() {
    return 'NetworkException: $message';
  }
}

class NewsApi {
  static final Random _random = Random();

  static Future<List<Article>> fetchArticles() async {
    await Future.delayed(const Duration(seconds: 2));

    final shouldFail = _random.nextDouble() < 0.30;

    if (shouldFail) {
      throw const NetworkException(
        'Failed to fetch articles. Please check your connection.',
      );
    }

    return const [
      Article(
        title: 'Flutter 4.0 Rumors: What Developers Should Expect',
        author: 'Ayla Karimova',
      ),
      Article(
        title: 'Why State Management Still Confuses New Flutter Devs',
        author: 'Nihat Mammadli',
      ),
      Article(
        title: 'Dart Futures Explained Without the Pain',
        author: 'Leyla Hasanli',
      ),
      Article(
        title: 'How Mobile Apps Handle Offline Recovery',
        author: 'Samir Aliyev',
      ),
    ];
  }
}

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() {
    return _NewsScreenState();
  }
}

class _NewsScreenState extends State<NewsScreen> {
  late Future<List<Article>> _articlesFuture;

  @override
  void initState() {
    super.initState();
    _articlesFuture = NewsApi.fetchArticles();
  }

  void _retry() {
    setState(() {
      _articlesFuture = NewsApi.fetchArticles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: FutureBuilder<List<Article>>(
        future: _articlesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.wifi_off,
                      size: 56,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Could not load articles.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      snapshot.error.toString(),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: _retry,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No articles found.'),
            );
          }

          final articles = snapshot.data!;

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: articles.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
            itemBuilder: (context, index) {
              final article = articles[index];

              return Card(
                child: ListTile(
                  leading: const Icon(Icons.article_outlined),
                  title: Text(article.title),
                  subtitle: Text('By ${article.author}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
