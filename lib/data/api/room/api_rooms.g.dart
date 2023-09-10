// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRooms _$ApiRoomsFromJson(Map<String, dynamic> json) => ApiRooms(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiRoomsToJson(ApiRooms instance) => <String, dynamic>{
      'rooms': instance.rooms,
    };
