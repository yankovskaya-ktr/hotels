import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/booking/booking.dart';
import '../../domain/hotel/hotel.dart';
import '../api/dio_client.dart';
import '../api/room/api_rooms.dart';

part 'api_repository.g.dart';

@RestApi()
abstract class ApiRepository {
  factory ApiRepository(Dio dio, {String baseUrl}) = _ApiRepository;

  @GET("/35e0d18e-2521-4f1b-a575-f0fe366f66e3")
  Future<Hotel> getHotel();

  @GET("/e8868481-743f-4eb2-a0d7-2bc4012275c8")
  Future<Booking> getBooking();

  @GET("/f9a38183-6f95-43aa-853a-9c83cbb05ecd")
  Future<ApiRooms> getRooms();
}

final apiRepoProvider = Provider<ApiRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiRepository(dio);
});
