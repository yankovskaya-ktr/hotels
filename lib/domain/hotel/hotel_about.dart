import 'package:json_annotation/json_annotation.dart';

part 'hotel_about.g.dart';

@JsonSerializable()
class HotelAbout {
  final String description;
  final List<String> peculiarities;

  HotelAbout({required this.description, required this.peculiarities});

  factory HotelAbout.fromJson(Map<String, dynamic> json) =>
      _$HotelAboutFromJson(json);
}
