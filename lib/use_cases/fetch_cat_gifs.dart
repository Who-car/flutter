import '../repositories/cat_repository.dart';

class FetchCatGifsUseCase {
  final CatRepository repository;
  FetchCatGifsUseCase(this.repository);
  Future<List<String>> execute(int page, int limit) => repository.fetchCatGifs(page, limit);
}