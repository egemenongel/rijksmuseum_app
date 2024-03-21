// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) {
  return _HomeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeResponseModel {
  List<ArtObjectModel>? get artObjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseModelCopyWith<HomeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseModelCopyWith<$Res> {
  factory $HomeResponseModelCopyWith(
          HomeResponseModel value, $Res Function(HomeResponseModel) then) =
      _$HomeResponseModelCopyWithImpl<$Res, HomeResponseModel>;
  @useResult
  $Res call({List<ArtObjectModel>? artObjects});
}

/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res, $Val extends HomeResponseModel>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artObjects = freezed,
  }) {
    return _then(_value.copyWith(
      artObjects: freezed == artObjects
          ? _value.artObjects
          : artObjects // ignore: cast_nullable_to_non_nullable
              as List<ArtObjectModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseModelImplCopyWith<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  factory _$$HomeResponseModelImplCopyWith(_$HomeResponseModelImpl value,
          $Res Function(_$HomeResponseModelImpl) then) =
      __$$HomeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArtObjectModel>? artObjects});
}

/// @nodoc
class __$$HomeResponseModelImplCopyWithImpl<$Res>
    extends _$HomeResponseModelCopyWithImpl<$Res, _$HomeResponseModelImpl>
    implements _$$HomeResponseModelImplCopyWith<$Res> {
  __$$HomeResponseModelImplCopyWithImpl(_$HomeResponseModelImpl _value,
      $Res Function(_$HomeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artObjects = freezed,
  }) {
    return _then(_$HomeResponseModelImpl(
      artObjects: freezed == artObjects
          ? _value._artObjects
          : artObjects // ignore: cast_nullable_to_non_nullable
              as List<ArtObjectModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseModelImpl implements _HomeResponseModel {
  const _$HomeResponseModelImpl(
      {required final List<ArtObjectModel>? artObjects})
      : _artObjects = artObjects;

  factory _$HomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseModelImplFromJson(json);

  final List<ArtObjectModel>? _artObjects;
  @override
  List<ArtObjectModel>? get artObjects {
    final value = _artObjects;
    if (value == null) return null;
    if (_artObjects is EqualUnmodifiableListView) return _artObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeResponseModel(artObjects: $artObjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._artObjects, _artObjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_artObjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      __$$HomeResponseModelImplCopyWithImpl<_$HomeResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HomeResponseModel implements HomeResponseModel {
  const factory _HomeResponseModel(
          {required final List<ArtObjectModel>? artObjects}) =
      _$HomeResponseModelImpl;

  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$HomeResponseModelImpl.fromJson;

  @override
  List<ArtObjectModel>? get artObjects;
  @override
  @JsonKey(ignore: true)
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtObjectModel _$ArtObjectModelFromJson(Map<String, dynamic> json) {
  return _ArtObjectModel.fromJson(json);
}

/// @nodoc
mixin _$ArtObjectModel {
  String get id => throw _privateConstructorUsedError;
  String get objectNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get hasImage => throw _privateConstructorUsedError;
  String get longTitle => throw _privateConstructorUsedError;
  String get principalOrFirstMaker => throw _privateConstructorUsedError;
  WebImageModel get webImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtObjectModelCopyWith<ArtObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtObjectModelCopyWith<$Res> {
  factory $ArtObjectModelCopyWith(
          ArtObjectModel value, $Res Function(ArtObjectModel) then) =
      _$ArtObjectModelCopyWithImpl<$Res, ArtObjectModel>;
  @useResult
  $Res call(
      {String id,
      String objectNumber,
      String title,
      bool hasImage,
      String longTitle,
      String principalOrFirstMaker,
      WebImageModel webImage});

  $WebImageModelCopyWith<$Res> get webImage;
}

/// @nodoc
class _$ArtObjectModelCopyWithImpl<$Res, $Val extends ArtObjectModel>
    implements $ArtObjectModelCopyWith<$Res> {
  _$ArtObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? objectNumber = null,
    Object? title = null,
    Object? hasImage = null,
    Object? longTitle = null,
    Object? principalOrFirstMaker = null,
    Object? webImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      objectNumber: null == objectNumber
          ? _value.objectNumber
          : objectNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasImage: null == hasImage
          ? _value.hasImage
          : hasImage // ignore: cast_nullable_to_non_nullable
              as bool,
      longTitle: null == longTitle
          ? _value.longTitle
          : longTitle // ignore: cast_nullable_to_non_nullable
              as String,
      principalOrFirstMaker: null == principalOrFirstMaker
          ? _value.principalOrFirstMaker
          : principalOrFirstMaker // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as WebImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebImageModelCopyWith<$Res> get webImage {
    return $WebImageModelCopyWith<$Res>(_value.webImage, (value) {
      return _then(_value.copyWith(webImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtObjectModelImplCopyWith<$Res>
    implements $ArtObjectModelCopyWith<$Res> {
  factory _$$ArtObjectModelImplCopyWith(_$ArtObjectModelImpl value,
          $Res Function(_$ArtObjectModelImpl) then) =
      __$$ArtObjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String objectNumber,
      String title,
      bool hasImage,
      String longTitle,
      String principalOrFirstMaker,
      WebImageModel webImage});

  @override
  $WebImageModelCopyWith<$Res> get webImage;
}

/// @nodoc
class __$$ArtObjectModelImplCopyWithImpl<$Res>
    extends _$ArtObjectModelCopyWithImpl<$Res, _$ArtObjectModelImpl>
    implements _$$ArtObjectModelImplCopyWith<$Res> {
  __$$ArtObjectModelImplCopyWithImpl(
      _$ArtObjectModelImpl _value, $Res Function(_$ArtObjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? objectNumber = null,
    Object? title = null,
    Object? hasImage = null,
    Object? longTitle = null,
    Object? principalOrFirstMaker = null,
    Object? webImage = null,
  }) {
    return _then(_$ArtObjectModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      objectNumber: null == objectNumber
          ? _value.objectNumber
          : objectNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasImage: null == hasImage
          ? _value.hasImage
          : hasImage // ignore: cast_nullable_to_non_nullable
              as bool,
      longTitle: null == longTitle
          ? _value.longTitle
          : longTitle // ignore: cast_nullable_to_non_nullable
              as String,
      principalOrFirstMaker: null == principalOrFirstMaker
          ? _value.principalOrFirstMaker
          : principalOrFirstMaker // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as WebImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtObjectModelImpl implements _ArtObjectModel {
  const _$ArtObjectModelImpl(
      {required this.id,
      required this.objectNumber,
      required this.title,
      required this.hasImage,
      required this.longTitle,
      required this.principalOrFirstMaker,
      required this.webImage});

  factory _$ArtObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtObjectModelImplFromJson(json);

  @override
  final String id;
  @override
  final String objectNumber;
  @override
  final String title;
  @override
  final bool hasImage;
  @override
  final String longTitle;
  @override
  final String principalOrFirstMaker;
  @override
  final WebImageModel webImage;

  @override
  String toString() {
    return 'ArtObjectModel(id: $id, objectNumber: $objectNumber, title: $title, hasImage: $hasImage, longTitle: $longTitle, principalOrFirstMaker: $principalOrFirstMaker, webImage: $webImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtObjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.objectNumber, objectNumber) ||
                other.objectNumber == objectNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hasImage, hasImage) ||
                other.hasImage == hasImage) &&
            (identical(other.longTitle, longTitle) ||
                other.longTitle == longTitle) &&
            (identical(other.principalOrFirstMaker, principalOrFirstMaker) ||
                other.principalOrFirstMaker == principalOrFirstMaker) &&
            (identical(other.webImage, webImage) ||
                other.webImage == webImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, objectNumber, title,
      hasImage, longTitle, principalOrFirstMaker, webImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtObjectModelImplCopyWith<_$ArtObjectModelImpl> get copyWith =>
      __$$ArtObjectModelImplCopyWithImpl<_$ArtObjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtObjectModelImplToJson(
      this,
    );
  }
}

abstract class _ArtObjectModel implements ArtObjectModel {
  const factory _ArtObjectModel(
      {required final String id,
      required final String objectNumber,
      required final String title,
      required final bool hasImage,
      required final String longTitle,
      required final String principalOrFirstMaker,
      required final WebImageModel webImage}) = _$ArtObjectModelImpl;

  factory _ArtObjectModel.fromJson(Map<String, dynamic> json) =
      _$ArtObjectModelImpl.fromJson;

  @override
  String get id;
  @override
  String get objectNumber;
  @override
  String get title;
  @override
  bool get hasImage;
  @override
  String get longTitle;
  @override
  String get principalOrFirstMaker;
  @override
  WebImageModel get webImage;
  @override
  @JsonKey(ignore: true)
  _$$ArtObjectModelImplCopyWith<_$ArtObjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebImageModel _$WebImageModelFromJson(Map<String, dynamic> json) {
  return _WebImageModel.fromJson(json);
}

/// @nodoc
mixin _$WebImageModel {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebImageModelCopyWith<WebImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebImageModelCopyWith<$Res> {
  factory $WebImageModelCopyWith(
          WebImageModel value, $Res Function(WebImageModel) then) =
      _$WebImageModelCopyWithImpl<$Res, WebImageModel>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$WebImageModelCopyWithImpl<$Res, $Val extends WebImageModel>
    implements $WebImageModelCopyWith<$Res> {
  _$WebImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebImageModelImplCopyWith<$Res>
    implements $WebImageModelCopyWith<$Res> {
  factory _$$WebImageModelImplCopyWith(
          _$WebImageModelImpl value, $Res Function(_$WebImageModelImpl) then) =
      __$$WebImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$WebImageModelImplCopyWithImpl<$Res>
    extends _$WebImageModelCopyWithImpl<$Res, _$WebImageModelImpl>
    implements _$$WebImageModelImplCopyWith<$Res> {
  __$$WebImageModelImplCopyWithImpl(
      _$WebImageModelImpl _value, $Res Function(_$WebImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$WebImageModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebImageModelImpl implements _WebImageModel {
  const _$WebImageModelImpl({required this.url});

  factory _$WebImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebImageModelImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'WebImageModel(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebImageModelImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebImageModelImplCopyWith<_$WebImageModelImpl> get copyWith =>
      __$$WebImageModelImplCopyWithImpl<_$WebImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebImageModelImplToJson(
      this,
    );
  }
}

abstract class _WebImageModel implements WebImageModel {
  const factory _WebImageModel({required final String url}) =
      _$WebImageModelImpl;

  factory _WebImageModel.fromJson(Map<String, dynamic> json) =
      _$WebImageModelImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$WebImageModelImplCopyWith<_$WebImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
