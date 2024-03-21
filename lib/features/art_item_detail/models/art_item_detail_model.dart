import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/models/home_response_model.dart';

part 'art_item_detail_model.freezed.dart';
part 'art_item_detail_model.g.dart';

@freezed
class ArtItemDetailModel with _$ArtItemDetailModel {
  const factory ArtItemDetailModel({
    DetailArtObjectModel? artObject,
  }) = _ArtItemDetailModel;

  factory ArtItemDetailModel.fromJson(Map<String, Object?> json) =>
      _$ArtItemDetailModelFromJson(json);
}

@freezed
class DetailArtObjectModel with _$DetailArtObjectModel {
  const factory DetailArtObjectModel({
    required String id,
    required WebImageModel webImage,
    String? plaqueDescriptionEnglish,
    required String physicalMedium,
    required String subTitle,
    required String longTitle,
    List<String>? materials,
    List<String>? objectTypes,
    String? objectNumber,
    List<ColorModel>? colors,
    String? location,
    DatingModel? dating,
  }) = _DetailArtObjectModel;

  factory DetailArtObjectModel.fromJson(Map<String, Object?> json) =>
      _$DetailArtObjectModelFromJson(json);
}

@freezed
class ColorModel with _$ColorModel {
  const factory ColorModel({
    required String hex,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, Object?> json) =>
      _$ColorModelFromJson(json);
}

@freezed
class DatingModel with _$DatingModel {
  const factory DatingModel({
    String? presentingDate,
  }) = _DatingModel;

  factory DatingModel.fromJson(Map<String, Object?> json) =>
      _$DatingModelFromJson(json);
}
