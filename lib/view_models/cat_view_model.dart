import 'package:flutter/material.dart';
import '../models/cat_image.dart';
import '../use_cases/fetch_cat_gifs.dart';
import '../use_cases/fetch_cat_image.dart';

class CatViewModel with ChangeNotifier {
  final FetchCatImageUseCase fetchCatImageUseCase;
  final FetchCatGifsUseCase fetchCatGifsUseCase;

  CatViewModel({required this.fetchCatImageUseCase, required this.fetchCatGifsUseCase});

  CatImage? _catImage;
  List<String> _catGifs = [];
  bool _isLoading = false;
  String? _error;

  CatImage? get catImage => _catImage;
  List<String> get catGifs => _catGifs;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchCatImage() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      _catImage = await fetchCatImageUseCase.execute();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchCatGifs(int page, int limit) async {
    _isLoading = true;
    notifyListeners();
    try {
      final newGifs = await fetchCatGifsUseCase.execute(page, limit);
      _catGifs.addAll(newGifs);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}