// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatImage {

 String get url;
/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatImageCopyWith<CatImage> get copyWith => _$CatImageCopyWithImpl<CatImage>(this as CatImage, _$identity);

  /// Serializes this CatImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'CatImage(url: $url)';
}


}

/// @nodoc
abstract mixin class $CatImageCopyWith<$Res>  {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) _then) = _$CatImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$CatImageCopyWithImpl<$Res>
    implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._self, this._then);

  final CatImage _self;
  final $Res Function(CatImage) _then;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CatImage implements CatImage {
  const _CatImage({required this.url});
  factory _CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);

@override final  String url;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatImageCopyWith<_CatImage> get copyWith => __$CatImageCopyWithImpl<_CatImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'CatImage(url: $url)';
}


}

/// @nodoc
abstract mixin class _$CatImageCopyWith<$Res> implements $CatImageCopyWith<$Res> {
  factory _$CatImageCopyWith(_CatImage value, $Res Function(_CatImage) _then) = __$CatImageCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$CatImageCopyWithImpl<$Res>
    implements _$CatImageCopyWith<$Res> {
  __$CatImageCopyWithImpl(this._self, this._then);

  final _CatImage _self;
  final $Res Function(_CatImage) _then;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_CatImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
