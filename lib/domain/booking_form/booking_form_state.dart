import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_form_state.freezed.dart';

@freezed
class Field with _$Field {
  const factory Field({
    required String name,
    required bool isValid,
  }) = _Field;

  factory Field.emptyValid(String name) => Field(name: name, isValid: true);
}

@freezed
class CustomerDetailsFields with _$CustomerDetailsFields {
  const factory CustomerDetailsFields({
    required Field phone,
    required Field email,
  }) = _CustomerDetailsFields;

  factory CustomerDetailsFields.initial() => CustomerDetailsFields(
        phone: Field.emptyValid('Номер телефона'),
        email: Field.emptyValid('Почта'),
      );
}

@freezed
class TouristDetailsFields with _$TouristDetailsFields {
  const factory TouristDetailsFields({
    required Field name,
    required Field surname,
    required Field dateOfBirth,
    required Field citizenship,
    required Field passportNumber,
    required Field passportValidity,
  }) = _TouristDetailsFields;

  factory TouristDetailsFields.initial() => TouristDetailsFields(
      name: Field.emptyValid('Имя'),
      surname: Field.emptyValid('Фамилия'),
      dateOfBirth: Field.emptyValid('Дата рождения'),
      citizenship: Field.emptyValid('Гражданство'),
      passportNumber: Field.emptyValid('Номер загранпаспорта'),
      passportValidity: Field.emptyValid('Срок действия загранпаспорта'));
}

@freezed
class BookingFormState with _$BookingFormState {
  const factory BookingFormState({
    required CustomerDetailsFields customerDetails,
    required List<TouristDetailsFields> touristsDetails,
  }) = _BookingFormState;

  factory BookingFormState.initial() => BookingFormState(
      customerDetails: CustomerDetailsFields.initial(),
      touristsDetails: [TouristDetailsFields.initial()]);
}
