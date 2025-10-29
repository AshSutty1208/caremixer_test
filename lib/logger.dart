import 'package:flutter/foundation.dart';

void logDebug(String tag, String message) {
  if (kDebugMode) {
    print(getFormattedDebugLog(tag, message));
  }
}

void logException(String tag, Object error, {StackTrace? stackTrace}) {
  if (kDebugMode) {
    print(getFormattedErrorLog(tag, error, stackTrace ?? StackTrace.current));
  }
}

String getFormattedErrorLog(String tag, Object error, StackTrace? stackTrace) {
  return "TAG: $tag \n\n"
      "ERROR: $error \n\n"
      "STACK: $stackTrace";
}

String getFormattedDebugLog(String tag, String message) {
  return "TAG: $tag -> MESSAGE: $message \n\n";
}

void logStringInChunks(String tag, String input) {
  const int chunkSize = 1000; // Size of each chunk
  int length = input.length; // Total length of the string

  if (kDebugMode) {
    print('TAG: $tag');

    for (int i = 0; i < length; i += chunkSize) {
      // Calculate the end index for the current chunk
      int endIndex = (i + chunkSize < length) ? i + chunkSize : length;
      // Extract the substring for the current chunk
      String chunk = input.substring(i, endIndex);
      // Log the chunk (you can replace this with your actual logging method)
      if (kDebugMode) {
        print(chunk);
      }
    }
  }
}

dynamic logInline(dynamic returnValue) {
  logDebug("LOGGED_INLINE", returnValue.toString());
  return returnValue;
}
