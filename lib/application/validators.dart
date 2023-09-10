import 'package:email_validator/email_validator.dart';

class Validators {
  static bool nonEmptyString(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return true;
  }

  static bool lengthEqual(String? value, int length) {
    if (value == null || value.length != length) {
      return false;
    }
    return true;
  }

  static bool email(String? value) {
    if (value == null || !EmailValidator.validate(value.trim())) {
      return false;
    }
    return true;
  }
}
