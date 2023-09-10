import 'package:json_annotation/json_annotation.dart';

import 'hotel_about.dart';
part 'hotel.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Hotel {
  final int id;
  final String name;
  final String adress;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final HotelAbout aboutTheHotel;

  Hotel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

  factory Hotel.mock() => Hotel(
      aboutTheHotel: HotelAbout.mock(),
      adress: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
      id: 1,
      imageUrls: [
        "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
        "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
        "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
      ],
      minimalPrice: 134268,
      name: 'Лучший пятизвездочный отель в Хургаде, Египет',
      priceForIt: 'За тур с перелётом',
      rating: 5,
      ratingName: 'Превосходно');

//   "id": 1,
//  "name": "Лучший пятизвездочный отель в Хургаде, Египет",
//  "adress": "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
//  "minimal_price": 134268,
//  "price_for_it": "За тур с перелётом",
//  "rating": 5,
//  "rating_name": "Превосходно",
//  "image_urls": ["https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg", "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg", "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"],
//  "about_the_hotel": {
//     "description": "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
//     "peculiarities": ["Бесплатный Wifi на всей территории отеля", "1 км до пляжа", "Бесплатный фитнес-клуб", "20 км до аэропорта"]

//   }
}
