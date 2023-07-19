// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as num,
      imgUrl: json['imgUrl'] as String,
      tags: json['tags'] as String,
      views: json['views'] as num,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'tags': instance.tags,
      'views': instance.views,
    };
