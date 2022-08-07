import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/news.dart';

class NewsApi {
  static String apiUri =
      'https://newsapi.org/v2/top-headlines?country=kr&apiKey=';
  static String apiKey = 'ef0e2ea0f6924219a791414a41718510';

  Uri uri = Uri.parse(apiUri + apiKey);

  Future<List<News>> getNews() async {
    List<News> news = [];
    final response = await http.get(uri);
    final body = response.body;
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      news = jsonDecode(body)['articles'].map<News>((article) {
        return News.fromMap(article);
      }).toList();
    }
    return news;
  }
}
