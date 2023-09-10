import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotels/domain/booking_form/booking_form_state.dart';

import '../../application/validators.dart';
import '../constants/constants.dart';

class FormController extends AutoDisposeNotifier<BookingFormState> {
  @override
  BookingFormState build() => BookingFormState.initial();

  void addTouristDetails() {
    state = state.copyWith(touristsDetails: [
      ...state.touristsDetails,
      TouristDetailsFields.initial()
    ]);
  }

  bool validateEmail(String? value) {
    bool isValid = Validators.email(value);
    Field email = state.customerDetails.email.copyWith(isValid: isValid);
    state = state.copyWith(
        customerDetails: state.customerDetails.copyWith(email: email));
    return isValid;
  }

  bool validatePhone(String? value) {
    bool isValid =
        Validators.lengthEqual(value, Constants.phoneNumberMask.length);
    Field phone = state.customerDetails.phone.copyWith(isValid: isValid);
    state = state.copyWith(
        customerDetails: state.customerDetails.copyWith(phone: phone));
    return isValid;
  }

  bool validateName(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);

    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index]
        .copyWith(name: tourist.name.copyWith(isValid: isValid));

    // for (var i = 0; i < state.touristsDetails.length; i++) {
    //   final tourist = state.touristsDetails[i];
    //   if (i == index) {
    //     touristsDetails.add(
    //         tourist.copyWith(name: tourist.name.copyWith(isValid: isValid)));
    //   } else {
    //     touristsDetails.add(tourist);
    //   }
    // }
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validateSurname(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);
    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index]
        .copyWith(surname: tourist.surname.copyWith(isValid: isValid));
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validateDateOfBirth(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);
    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index]
        .copyWith(dateOfBirth: tourist.dateOfBirth.copyWith(isValid: isValid));
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validateCitizenship(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);
    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index]
        .copyWith(citizenship: tourist.citizenship.copyWith(isValid: isValid));
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validatePpassportNumber(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);
    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index].copyWith(
        passportNumber: tourist.passportNumber.copyWith(isValid: isValid));
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validatePassportValidity(String? value, int index) {
    bool isValid = Validators.nonEmptyString(value);
    final tourist = state.touristsDetails[index];
    List<TouristDetailsFields> touristsDetails =
        List.from(state.touristsDetails);
    touristsDetails[index] = state.touristsDetails[index].copyWith(
        passportValidity: tourist.passportValidity.copyWith(isValid: isValid));
    state = state.copyWith(touristsDetails: touristsDetails);
    return isValid;
  }

  bool validateForm() {
    final formKey = ref.watch(formKeyProvider);
    return formKey.currentState!.validate();
  }
}

final formKeyProvider =
    Provider<GlobalKey<FormState>>((ref) => GlobalKey<FormState>());

final formControllerProvider =
    NotifierProvider.autoDispose<FormController, BookingFormState>(() {
  return FormController();
});
