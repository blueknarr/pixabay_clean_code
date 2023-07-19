// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchState _$$_SearchStateFromJson(Map<String, dynamic> json) =>
    _$_SearchState(
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SearchStateToJson(_$_SearchState instance) =>
    <String, dynamic>{
      'images': instance.images,
      'isLoading': instance.isLoading,
    };
