// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'art_item_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtItemDetailModel _$ArtItemDetailModelFromJson(Map<String, dynamic> json) {
  return _ArtItemDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ArtItemDetailModel {
  DetailArtObjectModel? get artObject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtItemDetailModelCopyWith<ArtItemDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtItemDetailModelCopyWith<$Res> {
  factory $ArtItemDetailModelCopyWith(
          ArtItemDetailModel value, $Res Function(ArtItemDetailModel) then) =
      _$ArtItemDetailModelCopyWithImpl<$Res, ArtItemDetailModel>;
  @useResult
  $Res call({DetailArtObjectModel? artObject});

  $DetailArtObjectModelCopyWith<$Res>? get artObject;
}

/// @nodoc
class _$ArtItemDetailModelCopyWithImpl<$Res, $Val extends ArtItemDetailModel>
    implements $ArtItemDetailModelCopyWith<$Res> {
  _$ArtItemDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artObject = freezed,
  }) {
    return _then(_value.copyWith(
      artObject: freezed == artObject
          ? _value.artObject
          : artObject // ignore: cast_nullable_to_non_nullable
              as DetailArtObjectModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailArtObjectModelCopyWith<$Res>? get artObject {
    if (_value.artObject == null) {
      return null;
    }

    return $DetailArtObjectModelCopyWith<$Res>(_value.artObject!, (value) {
      return _then(_value.copyWith(artObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtItemDetailModelImplCopyWith<$Res>
    implements $ArtItemDetailModelCopyWith<$Res> {
  factory _$$ArtItemDetailModelImplCopyWith(_$ArtItemDetailModelImpl value,
          $Res Function(_$ArtItemDetailModelImpl) then) =
      __$$ArtItemDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailArtObjectModel? artObject});

  @override
  $DetailArtObjectModelCopyWith<$Res>? get artObject;
}

/// @nodoc
class __$$ArtItemDetailModelImplCopyWithImpl<$Res>
    extends _$ArtItemDetailModelCopyWithImpl<$Res, _$ArtItemDetailModelImpl>
    implements _$$ArtItemDetailModelImplCopyWith<$Res> {
  __$$ArtItemDetailModelImplCopyWithImpl(_$ArtItemDetailModelImpl _value,
      $Res Function(_$ArtItemDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artObject = freezed,
  }) {
    return _then(_$ArtItemDetailModelImpl(
      artObject: freezed == artObject
          ? _value.artObject
          : artObject // ignore: cast_nullable_to_non_nullable
              as DetailArtObjectModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtItemDetailModelImpl implements _ArtItemDetailModel {
  const _$ArtItemDetailModelImpl({this.artObject});

  factory _$ArtItemDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtItemDetailModelImplFromJson(json);

  @override
  final DetailArtObjectModel? artObject;

  @override
  String toString() {
    return 'ArtItemDetailModel(artObject: $artObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtItemDetailModelImpl &&
            (identical(other.artObject, artObject) ||
                other.artObject == artObject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtItemDetailModelImplCopyWith<_$ArtItemDetailModelImpl> get copyWith =>
      __$$ArtItemDetailModelImplCopyWithImpl<_$ArtItemDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtItemDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ArtItemDetailModel implements ArtItemDetailModel {
  const factory _ArtItemDetailModel({final DetailArtObjectModel? artObject}) =
      _$ArtItemDetailModelImpl;

  factory _ArtItemDetailModel.fromJson(Map<String, dynamic> json) =
      _$ArtItemDetailModelImpl.fromJson;

  @override
  DetailArtObjectModel? get artObject;
  @override
  @JsonKey(ignore: true)
  _$$ArtItemDetailModelImplCopyWith<_$ArtItemDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailArtObjectModel _$DetailArtObjectModelFromJson(Map<String, dynamic> json) {
  return _DetailArtObjectModel.fromJson(json);
}

/// @nodoc
mixin _$DetailArtObjectModel {
  String get id => throw _privateConstructorUsedError;
  WebImageModel get webImage => throw _privateConstructorUsedError;
  String? get plaqueDescriptionEnglish => throw _privateConstructorUsedError;
  String get physicalMedium => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get longTitle => throw _privateConstructorUsedError;
  List<String>? get materials => throw _privateConstructorUsedError;
  List<String>? get objectTypes => throw _privateConstructorUsedError;
  String? get objectNumber => throw _privateConstructorUsedError;
  List<ColorModel>? get colors => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DatingModel? get dating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailArtObjectModelCopyWith<DetailArtObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailArtObjectModelCopyWith<$Res> {
  factory $DetailArtObjectModelCopyWith(DetailArtObjectModel value,
          $Res Function(DetailArtObjectModel) then) =
      _$DetailArtObjectModelCopyWithImpl<$Res, DetailArtObjectModel>;
  @useResult
  $Res call(
      {String id,
      WebImageModel webImage,
      String? plaqueDescriptionEnglish,
      String physicalMedium,
      String subTitle,
      String longTitle,
      List<String>? materials,
      List<String>? objectTypes,
      String? objectNumber,
      List<ColorModel>? colors,
      String? location,
      DatingModel? dating});

  $WebImageModelCopyWith<$Res> get webImage;
  $DatingModelCopyWith<$Res>? get dating;
}

/// @nodoc
class _$DetailArtObjectModelCopyWithImpl<$Res,
        $Val extends DetailArtObjectModel>
    implements $DetailArtObjectModelCopyWith<$Res> {
  _$DetailArtObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? webImage = null,
    Object? plaqueDescriptionEnglish = freezed,
    Object? physicalMedium = null,
    Object? subTitle = null,
    Object? longTitle = null,
    Object? materials = freezed,
    Object? objectTypes = freezed,
    Object? objectNumber = freezed,
    Object? colors = freezed,
    Object? location = freezed,
    Object? dating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as WebImageModel,
      plaqueDescriptionEnglish: freezed == plaqueDescriptionEnglish
          ? _value.plaqueDescriptionEnglish
          : plaqueDescriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      physicalMedium: null == physicalMedium
          ? _value.physicalMedium
          : physicalMedium // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      longTitle: null == longTitle
          ? _value.longTitle
          : longTitle // ignore: cast_nullable_to_non_nullable
              as String,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      objectTypes: freezed == objectTypes
          ? _value.objectTypes
          : objectTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      objectNumber: freezed == objectNumber
          ? _value.objectNumber
          : objectNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dating: freezed == dating
          ? _value.dating
          : dating // ignore: cast_nullable_to_non_nullable
              as DatingModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebImageModelCopyWith<$Res> get webImage {
    return $WebImageModelCopyWith<$Res>(_value.webImage, (value) {
      return _then(_value.copyWith(webImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DatingModelCopyWith<$Res>? get dating {
    if (_value.dating == null) {
      return null;
    }

    return $DatingModelCopyWith<$Res>(_value.dating!, (value) {
      return _then(_value.copyWith(dating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailArtObjectModelImplCopyWith<$Res>
    implements $DetailArtObjectModelCopyWith<$Res> {
  factory _$$DetailArtObjectModelImplCopyWith(_$DetailArtObjectModelImpl value,
          $Res Function(_$DetailArtObjectModelImpl) then) =
      __$$DetailArtObjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      WebImageModel webImage,
      String? plaqueDescriptionEnglish,
      String physicalMedium,
      String subTitle,
      String longTitle,
      List<String>? materials,
      List<String>? objectTypes,
      String? objectNumber,
      List<ColorModel>? colors,
      String? location,
      DatingModel? dating});

  @override
  $WebImageModelCopyWith<$Res> get webImage;
  @override
  $DatingModelCopyWith<$Res>? get dating;
}

/// @nodoc
class __$$DetailArtObjectModelImplCopyWithImpl<$Res>
    extends _$DetailArtObjectModelCopyWithImpl<$Res, _$DetailArtObjectModelImpl>
    implements _$$DetailArtObjectModelImplCopyWith<$Res> {
  __$$DetailArtObjectModelImplCopyWithImpl(_$DetailArtObjectModelImpl _value,
      $Res Function(_$DetailArtObjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? webImage = null,
    Object? plaqueDescriptionEnglish = freezed,
    Object? physicalMedium = null,
    Object? subTitle = null,
    Object? longTitle = null,
    Object? materials = freezed,
    Object? objectTypes = freezed,
    Object? objectNumber = freezed,
    Object? colors = freezed,
    Object? location = freezed,
    Object? dating = freezed,
  }) {
    return _then(_$DetailArtObjectModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as WebImageModel,
      plaqueDescriptionEnglish: freezed == plaqueDescriptionEnglish
          ? _value.plaqueDescriptionEnglish
          : plaqueDescriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      physicalMedium: null == physicalMedium
          ? _value.physicalMedium
          : physicalMedium // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      longTitle: null == longTitle
          ? _value.longTitle
          : longTitle // ignore: cast_nullable_to_non_nullable
              as String,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      objectTypes: freezed == objectTypes
          ? _value._objectTypes
          : objectTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      objectNumber: freezed == objectNumber
          ? _value.objectNumber
          : objectNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dating: freezed == dating
          ? _value.dating
          : dating // ignore: cast_nullable_to_non_nullable
              as DatingModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailArtObjectModelImpl implements _DetailArtObjectModel {
  const _$DetailArtObjectModelImpl(
      {required this.id,
      required this.webImage,
      this.plaqueDescriptionEnglish,
      required this.physicalMedium,
      required this.subTitle,
      required this.longTitle,
      final List<String>? materials,
      final List<String>? objectTypes,
      this.objectNumber,
      final List<ColorModel>? colors,
      this.location,
      this.dating})
      : _materials = materials,
        _objectTypes = objectTypes,
        _colors = colors;

  factory _$DetailArtObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailArtObjectModelImplFromJson(json);

  @override
  final String id;
  @override
  final WebImageModel webImage;
  @override
  final String? plaqueDescriptionEnglish;
  @override
  final String physicalMedium;
  @override
  final String subTitle;
  @override
  final String longTitle;
  final List<String>? _materials;
  @override
  List<String>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _objectTypes;
  @override
  List<String>? get objectTypes {
    final value = _objectTypes;
    if (value == null) return null;
    if (_objectTypes is EqualUnmodifiableListView) return _objectTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? objectNumber;
  final List<ColorModel>? _colors;
  @override
  List<ColorModel>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? location;
  @override
  final DatingModel? dating;

  @override
  String toString() {
    return 'DetailArtObjectModel(id: $id, webImage: $webImage, plaqueDescriptionEnglish: $plaqueDescriptionEnglish, physicalMedium: $physicalMedium, subTitle: $subTitle, longTitle: $longTitle, materials: $materials, objectTypes: $objectTypes, objectNumber: $objectNumber, colors: $colors, location: $location, dating: $dating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailArtObjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.webImage, webImage) ||
                other.webImage == webImage) &&
            (identical(
                    other.plaqueDescriptionEnglish, plaqueDescriptionEnglish) ||
                other.plaqueDescriptionEnglish == plaqueDescriptionEnglish) &&
            (identical(other.physicalMedium, physicalMedium) ||
                other.physicalMedium == physicalMedium) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.longTitle, longTitle) ||
                other.longTitle == longTitle) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._objectTypes, _objectTypes) &&
            (identical(other.objectNumber, objectNumber) ||
                other.objectNumber == objectNumber) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dating, dating) || other.dating == dating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      webImage,
      plaqueDescriptionEnglish,
      physicalMedium,
      subTitle,
      longTitle,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_objectTypes),
      objectNumber,
      const DeepCollectionEquality().hash(_colors),
      location,
      dating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailArtObjectModelImplCopyWith<_$DetailArtObjectModelImpl>
      get copyWith =>
          __$$DetailArtObjectModelImplCopyWithImpl<_$DetailArtObjectModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailArtObjectModelImplToJson(
      this,
    );
  }
}

abstract class _DetailArtObjectModel implements DetailArtObjectModel {
  const factory _DetailArtObjectModel(
      {required final String id,
      required final WebImageModel webImage,
      final String? plaqueDescriptionEnglish,
      required final String physicalMedium,
      required final String subTitle,
      required final String longTitle,
      final List<String>? materials,
      final List<String>? objectTypes,
      final String? objectNumber,
      final List<ColorModel>? colors,
      final String? location,
      final DatingModel? dating}) = _$DetailArtObjectModelImpl;

  factory _DetailArtObjectModel.fromJson(Map<String, dynamic> json) =
      _$DetailArtObjectModelImpl.fromJson;

  @override
  String get id;
  @override
  WebImageModel get webImage;
  @override
  String? get plaqueDescriptionEnglish;
  @override
  String get physicalMedium;
  @override
  String get subTitle;
  @override
  String get longTitle;
  @override
  List<String>? get materials;
  @override
  List<String>? get objectTypes;
  @override
  String? get objectNumber;
  @override
  List<ColorModel>? get colors;
  @override
  String? get location;
  @override
  DatingModel? get dating;
  @override
  @JsonKey(ignore: true)
  _$$DetailArtObjectModelImplCopyWith<_$DetailArtObjectModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) {
  return _ColorModel.fromJson(json);
}

/// @nodoc
mixin _$ColorModel {
  String get hex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorModelCopyWith<ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorModelCopyWith<$Res> {
  factory $ColorModelCopyWith(
          ColorModel value, $Res Function(ColorModel) then) =
      _$ColorModelCopyWithImpl<$Res, ColorModel>;
  @useResult
  $Res call({String hex});
}

/// @nodoc
class _$ColorModelCopyWithImpl<$Res, $Val extends ColorModel>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hex = null,
  }) {
    return _then(_value.copyWith(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorModelImplCopyWith<$Res>
    implements $ColorModelCopyWith<$Res> {
  factory _$$ColorModelImplCopyWith(
          _$ColorModelImpl value, $Res Function(_$ColorModelImpl) then) =
      __$$ColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hex});
}

/// @nodoc
class __$$ColorModelImplCopyWithImpl<$Res>
    extends _$ColorModelCopyWithImpl<$Res, _$ColorModelImpl>
    implements _$$ColorModelImplCopyWith<$Res> {
  __$$ColorModelImplCopyWithImpl(
      _$ColorModelImpl _value, $Res Function(_$ColorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hex = null,
  }) {
    return _then(_$ColorModelImpl(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorModelImpl implements _ColorModel {
  const _$ColorModelImpl({required this.hex});

  factory _$ColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorModelImplFromJson(json);

  @override
  final String hex;

  @override
  String toString() {
    return 'ColorModel(hex: $hex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorModelImpl &&
            (identical(other.hex, hex) || other.hex == hex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      __$$ColorModelImplCopyWithImpl<_$ColorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorModelImplToJson(
      this,
    );
  }
}

abstract class _ColorModel implements ColorModel {
  const factory _ColorModel({required final String hex}) = _$ColorModelImpl;

  factory _ColorModel.fromJson(Map<String, dynamic> json) =
      _$ColorModelImpl.fromJson;

  @override
  String get hex;
  @override
  @JsonKey(ignore: true)
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatingModel _$DatingModelFromJson(Map<String, dynamic> json) {
  return _DatingModel.fromJson(json);
}

/// @nodoc
mixin _$DatingModel {
  String? get presentingDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatingModelCopyWith<DatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatingModelCopyWith<$Res> {
  factory $DatingModelCopyWith(
          DatingModel value, $Res Function(DatingModel) then) =
      _$DatingModelCopyWithImpl<$Res, DatingModel>;
  @useResult
  $Res call({String? presentingDate});
}

/// @nodoc
class _$DatingModelCopyWithImpl<$Res, $Val extends DatingModel>
    implements $DatingModelCopyWith<$Res> {
  _$DatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentingDate = freezed,
  }) {
    return _then(_value.copyWith(
      presentingDate: freezed == presentingDate
          ? _value.presentingDate
          : presentingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatingModelImplCopyWith<$Res>
    implements $DatingModelCopyWith<$Res> {
  factory _$$DatingModelImplCopyWith(
          _$DatingModelImpl value, $Res Function(_$DatingModelImpl) then) =
      __$$DatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? presentingDate});
}

/// @nodoc
class __$$DatingModelImplCopyWithImpl<$Res>
    extends _$DatingModelCopyWithImpl<$Res, _$DatingModelImpl>
    implements _$$DatingModelImplCopyWith<$Res> {
  __$$DatingModelImplCopyWithImpl(
      _$DatingModelImpl _value, $Res Function(_$DatingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentingDate = freezed,
  }) {
    return _then(_$DatingModelImpl(
      presentingDate: freezed == presentingDate
          ? _value.presentingDate
          : presentingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatingModelImpl implements _DatingModel {
  const _$DatingModelImpl({this.presentingDate});

  factory _$DatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatingModelImplFromJson(json);

  @override
  final String? presentingDate;

  @override
  String toString() {
    return 'DatingModel(presentingDate: $presentingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatingModelImpl &&
            (identical(other.presentingDate, presentingDate) ||
                other.presentingDate == presentingDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, presentingDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatingModelImplCopyWith<_$DatingModelImpl> get copyWith =>
      __$$DatingModelImplCopyWithImpl<_$DatingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatingModelImplToJson(
      this,
    );
  }
}

abstract class _DatingModel implements DatingModel {
  const factory _DatingModel({final String? presentingDate}) =
      _$DatingModelImpl;

  factory _DatingModel.fromJson(Map<String, dynamic> json) =
      _$DatingModelImpl.fromJson;

  @override
  String? get presentingDate;
  @override
  @JsonKey(ignore: true)
  _$$DatingModelImplCopyWith<_$DatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
