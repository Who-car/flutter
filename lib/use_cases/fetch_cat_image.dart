import '../models/cat_image.dart';
import '../repositories/cat_repository.dart';

class FetchCatImageUseCase {
  final CatRepository repository;
  FetchCatImageUseCase(this.repository);
  Future<CatImage> execute() => repository.fetchCatImage();
}
