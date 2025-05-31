// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> updateAppStateListsFromFF() async {
  FFAppState().courseNameA = List.from(FFAppState().courseNameA);
  FFAppState().unitListA = List.from(FFAppState().unitListA);
  FFAppState().gradeListA = List.from(FFAppState().gradeListA);

  FFAppState().courseNameB = List.from(FFAppState().courseNameB);
  FFAppState().unitListB = List.from(FFAppState().unitListB);
  FFAppState().gradeListB = List.from(FFAppState().gradeListB);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
