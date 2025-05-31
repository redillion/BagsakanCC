// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';

Future<String> downloadAndOpenPdf(String url) async {
  try {
    final dio = Dio();

    // Send HEAD request to get headers first
    final response = await dio.head(url);
    final contentType = response.headers.value('content-type') ?? '';

    if (!contentType.toLowerCase().contains('pdf')) {
      throw 'URL does not point to a PDF file. Content-Type: $contentType';
    }

    // Proceed with download as before...
    // (rest of your download and open code here)

    return 'PDF downloaded and opened successfully.';
  } catch (e) {
    throw 'Failed: $e';
  }
}
