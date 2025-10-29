import 'package:intl/intl.dart';

extension DatetimeExtensions on DateTime {
  String formatToDayTime() {
    final formatter = DateFormat('dd MMM hh:mm a');
    return formatter.format(toLocal());
  }
}

extension StringExtension on String {
  String capitalize() {
    return substring(0, 1).toUpperCase() + substring(1).toLowerCase();
  }
}
