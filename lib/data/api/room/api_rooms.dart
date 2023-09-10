import 'package:json_annotation/json_annotation.dart';

import '../../../domain/room/room.dart';

part 'api_rooms.g.dart';

@JsonSerializable()
class ApiRooms {
  final List<Room> rooms;

  ApiRooms({required this.rooms});

  factory ApiRooms.fromJson(Map<String, dynamic> json) =>
      _$ApiRoomsFromJson(json);
}
