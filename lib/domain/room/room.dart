import 'package:json_annotation/json_annotation.dart';

part 'room.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Room {
  final int id;
  final String name;
  final int price;
  final String pricePer;
  final List<String> imageUrls;
  final List<String> peculiarities;

  Room({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.imageUrls,
    required this.peculiarities,
  });

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
