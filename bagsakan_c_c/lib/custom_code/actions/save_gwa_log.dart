// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

Future<void> saveGwaLog() async {
  try {
    // Generate unique logID
    String logID = Uuid().v4();

    // Reference Firestore collection
    CollectionReference gwaCollection =
        FirebaseFirestore.instance.collection('historyLog');

    // Save the log
    await gwaCollection.doc(logID).set({
      'logID': logID,
      'logName': FFAppState().logtitle,
      'courseNameA': FFAppState().CourseName,
      'unitListA': FFAppState().Unit,
      'gradeListA': FFAppState().Grade,
      'courseNameB': FFAppState().CourseName1,
      'unitListB': FFAppState().Unit1,
      'gradeListB': FFAppState().Grade1,
      'gwaResult': FFAppState().gwaResult,
      'gwaHonor': FFAppState().gwaHonor,
      'timestamp': FieldValue.serverTimestamp(),
    });
  } catch (e) {
    print('Error saving GWA log: $e');
  }
}
