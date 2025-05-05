// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatEvent()';
}


}

/// @nodoc
class $CatEventCopyWith<$Res>  {
$CatEventCopyWith(CatEvent _, $Res Function(CatEvent) __);
}


/// @nodoc


class Initialize implements CatEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatEvent.initialize()';
}


}




/// @nodoc


class FetchCatImage implements CatEvent {
  const FetchCatImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCatImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatEvent.fetchCatImage()';
}


}




/// @nodoc


class FetchCatGifs implements CatEvent {
  const FetchCatGifs({required this.page, required this.limit});
  

 final  int page;
 final  int limit;

/// Create a copy of CatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCatGifsCopyWith<FetchCatGifs> get copyWith => _$FetchCatGifsCopyWithImpl<FetchCatGifs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCatGifs&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'CatEvent.fetchCatGifs(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $FetchCatGifsCopyWith<$Res> implements $CatEventCopyWith<$Res> {
  factory $FetchCatGifsCopyWith(FetchCatGifs value, $Res Function(FetchCatGifs) _then) = _$FetchCatGifsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$FetchCatGifsCopyWithImpl<$Res>
    implements $FetchCatGifsCopyWith<$Res> {
  _$FetchCatGifsCopyWithImpl(this._self, this._then);

  final FetchCatGifs _self;
  final $Res Function(FetchCatGifs) _then;

/// Create a copy of CatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(FetchCatGifs(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
