// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseModelImpl _$$HomeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResponseModelImpl(
      artObjects: (json['artObjects'] as List<dynamic>?)
          ?.map((e) => ArtObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeResponseModelImplToJson(
        _$HomeResponseModelImpl instance) =>
    <String, dynamic>{
      'artObjects': instance.artObjects?.map((e) => e.toJson()).toList(),
    };

_$ArtObjectModelImpl _$$ArtObjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ArtObjectModelImpl(
      id: json['id'] as String,
      objectNumber: json['objectNumber'] as String,
      title: json['title'] as String,
      hasImage: json['hasImage'] as bool,
      longTitle: json['longTitle'] as String,
      principalOrFirstMaker: json['principalOrFirstMaker'] as String,
      webImage:
          WebImageModel.fromJson(json['webImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArtObjectModelImplToJson(
        _$ArtObjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectNumber': instance.objectNumber,
      'title': instance.title,
      'hasImage': instance.hasImage,
      'longTitle': instance.longTitle,
      'principalOrFirstMaker': instance.principalOrFirstMaker,
      'webImage': instance.webImage.toJson(),
    };

_$WebImageModelImpl _$$WebImageModelImplFromJson(Map<String, dynamic> json) =>
    _$WebImageModelImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$WebImageModelImplToJson(_$WebImageModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
