import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_event.freezed.dart';

@freezed
class CatEvent with _$CatEvent {
  const factory CatEvent.initialize() = Initialize;
  const factory CatEvent.fetchCatImage() = FetchCatImage;
  const factory CatEvent.fetchCatGifs({
    required int page,
    required int limit,
  }) = FetchCatGifs;
}