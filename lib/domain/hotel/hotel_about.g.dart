// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelAbout _$HotelAboutFromJson(Map<String, dynamic> json) => HotelAbout(
      description: json['description'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$HotelAboutToJson(HotelAbout instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
