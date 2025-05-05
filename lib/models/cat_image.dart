import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image.freezed.dart';
part 'cat_image.g.dart';

@freezed
abstract class CatImage with _$CatImage {
  const factory CatImage({required String url}) = _CatImage;

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
}