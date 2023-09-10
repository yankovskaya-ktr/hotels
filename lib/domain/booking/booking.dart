import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Booking {
  final int id;
  final String hotelName;
  final String hotelAdress;
  final int horating;
  final String ratingName;
  final String departure;
  final String arrivalCountry;
  final String tourDateStart;
  final String tourDateStop;
  final int numberOfNights;
  final String room;
  final String nutrition;
  final int tourPrice;
  final int fuelCharge;
  final int serviceCharge;

  Booking({
    required this.id,
    required this.hotelName,
    required this.hotelAdress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  factory Booking.mock() => Booking(
      id: 1,
      hotelName: 'Лучший пятизвездочный отель в Хургаде, Египет',
      hotelAdress: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
      horating: 5,
      ratingName: 'Превосходно',
      departure: 'Москва',
      arrivalCountry: 'Египет, Хургада',
      tourDateStart: '19.09.2023',
      tourDateStop: '27.09.2023',
      numberOfNights: 7,
      room: 'Люкс номер с видом на море',
      nutrition: 'Все включено',
      tourPrice: 289400,
      fuelCharge: 9300,
      serviceCharge: 2150);
}


//   "id": 1,
//   "hotel_name": "Лучший пятизвездочный отель в Хургаде, Египет",
//   "hotel_adress": "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
//   "horating": 5,
//   "rating_name": "Превосходно",
//   "departure": "Москва",
//   "arrival_country": "Египет, Хургада",
//   "tour_date_start": "19.09.2023",
//   "tour_date_stop": "27.09.2023",
//   "number_of_nights": 7,
//   "room": "Люкс номер с видом на море",
//   "nutrition": "Все включено",
//   "tour_price": 289400,
//   "fuel_charge": 9300,
//   "service_charge": 2150