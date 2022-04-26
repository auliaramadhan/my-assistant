import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class DatetimeApp {
  DatetimeApp._();
  static final formatDate = DateFormat('dd MMM yyyy');
  static final formatServer = DateFormat('yyyy-MM-dd');


  static String? datetoString(DateTime? date) {
    try {
      if (date == null) {
        return null;
      }
      return formatDate.format(date);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  static DateTime? datetoObject(String? date) {
    try {
      if (date == null) {
        return null;
      }
      return formatServer.parse(date);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
