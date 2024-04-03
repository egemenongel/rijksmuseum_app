import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    int? count,
    required List<ArtObjectModel>? artObjects,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, Object?> json) =>
      _$HomeResponseModelFromJson(json);
}

@freezed
class ArtObjectModel with _$ArtObjectModel {
  const factory ArtObjectModel({
    required String id,
    required String objectNumber,
    required String title,
    required bool hasImage,
    required String longTitle,
    required String principalOrFirstMaker,
    required WebImageModel webImage,
  }) = _ArtObjectModel;

  factory ArtObjectModel.fromJson(Map<String, Object?> json) =>
      _$ArtObjectModelFromJson(json);
}

@freezed
class WebImageModel with _$WebImageModel {
  const factory WebImageModel({
    required String url,
  }) = _WebImageModel;

  factory WebImageModel.fromJson(Map<String, Object?> json) =>
      _$WebImageModelFromJson(json);
}
