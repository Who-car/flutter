import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dotnet_cw/models/cat_image.dart';

part 'cat_state.freezed.dart';

@freezed
class CatState with _$CatState {
  const factory CatState.normal({
    CatImage? data1, // cat image
    @Default(false) bool isLoading1, // image loading
    @Default(<String>[]) List<String> data2, // cat GIFs
    @Default(false) bool isLoading2, // GIFs loading
  }) = Normal;

  const factory CatState.loading() = Loading;

  const factory CatState.error(String message) = Error;
}