// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_item_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtItemDetailModelImpl _$$ArtItemDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtItemDetailModelImpl(
      artObject: json['artObject'] == null
          ? null
          : DetailArtObjectModel.fromJson(
              json['artObject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArtItemDetailModelImplToJson(
        _$ArtItemDetailModelImpl instance) =>
    <String, dynamic>{
      'artObject': instance.artObject?.toJson(),
    };

_$DetailArtObjectModelImpl _$$DetailArtObjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailArtObjectModelImpl(
      id: json['id'] as String,
      webImage:
          WebImageModel.fromJson(json['webImage'] as Map<String, dynamic>),
      plaqueDescriptionEnglish: json['plaqueDescriptionEnglish'] as String?,
      physicalMedium: json['physicalMedium'] as String,
      subTitle: json['subTitle'] as String,
      longTitle: json['longTitle'] as String,
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      objectTypes: (json['objectTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      objectNumber: json['objectNumber'] as String?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] as String?,
      dating: json['dating'] == null
          ? null
          : DatingModel.fromJson(json['dating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailArtObjectModelImplToJson(
        _$DetailArtObjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'webImage': instance.webImage.toJson(),
      'plaqueDescriptionEnglish': instance.plaqueDescriptionEnglish,
      'physicalMedium': instance.physicalMedium,
      'subTitle': instance.subTitle,
      'longTitle': instance.longTitle,
      'materials': instance.materials,
      'objectTypes': instance.objectTypes,
      'objectNumber': instance.objectNumber,
      'colors': instance.colors?.map((e) => e.toJson()).toList(),
      'location': instance.location,
      'dating': instance.dating?.toJson(),
    };

_$ColorModelImpl _$$ColorModelImplFromJson(Map<String, dynamic> json) =>
    _$ColorModelImpl(
      hex: json['hex'] as String,
    );

Map<String, dynamic> _$$ColorModelImplToJson(_$ColorModelImpl instance) =>
    <String, dynamic>{
      'hex': instance.hex,
    };

_$DatingModelImpl _$$DatingModelImplFromJson(Map<String, dynamic> json) =>
    _$DatingModelImpl(
      presentingDate: json['presentingDate'] as String?,
    );

Map<String, dynamic> _$$DatingModelImplToJson(_$DatingModelImpl instance) =>
    <String, dynamic>{
      'presentingDate': instance.presentingDate,
    };
