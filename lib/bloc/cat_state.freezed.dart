// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatState()';
}


}

/// @nodoc
class $CatStateCopyWith<$Res>  {
$CatStateCopyWith(CatState _, $Res Function(CatState) __);
}


/// @nodoc


class Normal implements CatState {
  const Normal({this.data1, this.isLoading1 = false, final  List<String> data2 = const <String>[], this.isLoading2 = false}): _data2 = data2;
  

 final  CatImage? data1;
// cat image
@JsonKey() final  bool isLoading1;
// image loading
 final  List<String> _data2;
// image loading
@JsonKey() List<String> get data2 {
  if (_data2 is EqualUnmodifiableListView) return _data2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data2);
}

// cat GIFs
@JsonKey() final  bool isLoading2;

/// Create a copy of CatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NormalCopyWith<Normal> get copyWith => _$NormalCopyWithImpl<Normal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Normal&&(identical(other.data1, data1) || other.data1 == data1)&&(identical(other.isLoading1, isLoading1) || other.isLoading1 == isLoading1)&&const DeepCollectionEquality().equals(other._data2, _data2)&&(identical(other.isLoading2, isLoading2) || other.isLoading2 == isLoading2));
}


@override
int get hashCode => Object.hash(runtimeType,data1,isLoading1,const DeepCollectionEquality().hash(_data2),isLoading2);

@override
String toString() {
  return 'CatState.normal(data1: $data1, isLoading1: $isLoading1, data2: $data2, isLoading2: $isLoading2)';
}


}

/// @nodoc
abstract mixin class $NormalCopyWith<$Res> implements $CatStateCopyWith<$Res> {
  factory $NormalCopyWith(Normal value, $Res Function(Normal) _then) = _$NormalCopyWithImpl;
@useResult
$Res call({
 CatImage? data1, bool isLoading1, List<String> data2, bool isLoading2
});


$CatImageCopyWith<$Res>? get data1;

}
/// @nodoc
class _$NormalCopyWithImpl<$Res>
    implements $NormalCopyWith<$Res> {
  _$NormalCopyWithImpl(this._self, this._then);

  final Normal _self;
  final $Res Function(Normal) _then;

/// Create a copy of CatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data1 = freezed,Object? isLoading1 = null,Object? data2 = null,Object? isLoading2 = null,}) {
  return _then(Normal(
data1: freezed == data1 ? _self.data1 : data1 // ignore: cast_nullable_to_non_nullable
as CatImage?,isLoading1: null == isLoading1 ? _self.isLoading1 : isLoading1 // ignore: cast_nullable_to_non_nullable
as bool,data2: null == data2 ? _self._data2 : data2 // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading2: null == isLoading2 ? _self.isLoading2 : isLoading2 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatImageCopyWith<$Res>? get data1 {
    if (_self.data1 == null) {
    return null;
  }

  return $CatImageCopyWith<$Res>(_self.data1!, (value) {
    return _then(_self.copyWith(data1: value));
  });
}
}

/// @nodoc


class Loading implements CatState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatState.loading()';
}


}




/// @nodoc


class Error implements CatState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of CatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $CatStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of CatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
