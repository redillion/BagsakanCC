// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// BEGIN your custom action code here

Future<void> setAppStateFromDocument(DocumentReference docRef) async {
  final docSnapshot = await docRef.get();
  if (!docSnapshot.exists) return;

  final data = docSnapshot.data() as Map<String, dynamic>;

  // Handle grade lists (double)
  FFAppState().gradeListA = List<double>.from((data['gradeListA'] as List?)
          ?.map((e) => double.tryParse(e.toString()) ?? 0.0) ??
      []);
  FFAppState().gradeListB = List<double>.from((data['gradeListB'] as List?)
          ?.map((e) => double.tryParse(e.toString()) ?? 0.0) ??
      []);

  // Handle unit lists (int)
  FFAppState().unitListA = List<int>.from((data['unitListA'] as List?)
          ?.map((e) => int.tryParse(e.toString()) ?? 0) ??
      []);
  FFAppState().unitListB = List<int>.from((data['unitListB'] as List?)
          ?.map((e) => int.tryParse(e.toString()) ?? 0) ??
      []);

  // Handle course name lists (List<String>)
  FFAppState().courseNameA = List<String>.from(
      (data['courseNameA'] as List?)?.map((e) => e.toString()) ?? []);
  FFAppState().courseNameB = List<String>.from(
      (data['courseNameB'] as List?)?.map((e) => e.toString()) ?? []);

  // Handle GWA result
  FFAppState().gwaResult = (data['gwaResult'] as num?)?.toDouble() ?? 0.0;
}
// END your custom action code here

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
