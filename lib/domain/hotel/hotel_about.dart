import 'package:json_annotation/json_annotation.dart';

part 'hotel_about.g.dart';

@JsonSerializable()
class HotelAbout {
  final String description;
  final List<String> peculiarities;

  HotelAbout({required this.description, required this.peculiarities});

  factory HotelAbout.fromJson(Map<String, dynamic> json) =>
      _$HotelAboutFromJson(json);

  factory HotelAbout.mock() => HotelAbout(
          description:
              'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
          peculiarities: [
            "Бесплатный Wifi на всей территории отеля",
            "1 км до пляжа",
            "Бесплатный фитнес-клуб",
            "20 км до аэропорта"
          ]);
}


// "description": "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
//     "peculiarities": ["Бесплатный Wifi на всей территории отеля", "1 км до пляжа", "Бесплатный фитнес-клуб", "20 км до аэропорта"]
