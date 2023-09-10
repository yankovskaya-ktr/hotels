import 'package:intl/intl.dart';

class Format {
  static String rubles(int number) {
    var f = NumberFormat('###,###,###,###,###');
    return '${f.format(number).replaceAll(',', ' ')} ₽';
  }
}
