import "package:intl/intl.dart";

class Utils {
  static NumberFormat _numberFormatter;
  static DateFormat _dateFormatter;

  static NumberFormat get numberFormatter {
    if (_numberFormatter != null) {
      return _numberFormatter;
    }
    _numberFormatter = NumberFormat();
    return _numberFormatter;
  }

  static DateFormat get dateFormatter {
    if (_dateFormatter != null) {
      return _dateFormatter;
    }
    _dateFormatter = DateFormat('d MMM, HH:mm');

    return _dateFormatter;
  }
}
