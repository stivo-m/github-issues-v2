// Package imports:
import 'package:intl/intl.dart';

class Utils {
  static String pluralizeText({
    required int count,
    required String singularText,
  }) {
    if (count <= 1) return singularText;

    return singularText + 's';
  }

  static String formatDate({required dynamic date}) {
    DateFormat format = DateFormat('dd MM YYYY');
    return format.format(date);
  }
}
