import 'package:intl/intl.dart';

class HumanFormat {
  static String humanReadableNumber(double number) {
    final formatedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatedNumber;
  }
}
