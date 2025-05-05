import 'package:dio/dio.dart';

import '../models/cat_image.dart';

abstract class CatRepository {
  Future<CatImage> fetchCatImage();
  Future<List<String>> fetchCatGifs(int page, int limit);
}

class CatRepositoryImpl implements CatRepository {
  final Dio _dio;

  CatRepositoryImpl() : _dio = Dio() {
    _dio.options
      ..baseUrl = 'https://cataas.com/'
      ..connectTimeout = const Duration(seconds: 5)
      ..receiveTimeout = const Duration(seconds: 3);
  }

  @override
  Future<CatImage> fetchCatImage() async {
    try {
      final response = await _dio.get('cat?json=true');
      if (response.statusCode == 200) {
        return CatImage.fromJson(response.data);
      } else {
        throw Exception('Failed to load cat image: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load cat image: $e');
    }
  }

  @override
  Future<List<String>> fetchCatGifs(int page, int limit) async {
    try {
      // Since the API returns one GIF at a time, we call it `limit` times to simulate a list
      List<String> gifUrls = [];
      for (int i = 0; i < limit; i++) {
        final response = await _dio.get('cat/gif?json=true');
        if (response.statusCode == 200) {
          // Extract the URL from the JSON response
          final String gifUrl = response.data['url'];
          gifUrls.add(gifUrl);
        } else {
          throw Exception('Failed to load cat GIF: ${response.statusCode}');
        }
      }
      return gifUrls;
    } catch (e) {
      throw Exception('Failed to load cat GIFs: $e');
    }
  }
}