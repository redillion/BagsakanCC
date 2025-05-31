// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Calculates the weighted sum of grades and units
double getWeightedSum(List<int> units, List<double> grades) {
  double sum = 0;
  for (int i = 0; i < units.length; i++) {
    sum += units[i] * grades[i];
  }
  return sum;
}

// Calculates the total number of units
int getTotalUnits(List<int> units) {
  int total = 0;
  for (int unit in units) {
    total += unit;
  }
  return total;
}

// Checks if any grade is higher than the given threshold
bool hasGradeHigherThan(List<double> grades, double threshold) {
  for (double grade in grades) {
    if (grade > threshold) {
      return true;
    }
  }
  return false;
}

// Main GWA calculation action
Future<void> calculateGwaActionSim(BuildContext context) async {
  // Get values from AppState
  List<int> unitsA = FFAppState().unitListA;
  List<double> gradesA = FFAppState().gradeListA;

  List<int> unitsB = FFAppState().unitListB;
  List<double> gradesB = FFAppState().gradeListB;

  // Calculate weighted sums and total units
  double weightedSumA = getWeightedSum(unitsA, gradesA);
  int totalUnitsA = getTotalUnits(unitsA);

  double weightedSumB = getWeightedSum(unitsB, gradesB);
  int totalUnitsB = getTotalUnits(unitsB);

  // Combine totals
  double totalWeightedSum = weightedSumA + weightedSumB;
  int totalUnits = totalUnitsA + totalUnitsB;

  // Calculate GWA and round to 2 decimal places
  double gwa = totalUnits == 0 ? 0 : totalWeightedSum / totalUnits;
  double finalGwa = double.parse(gwa.toStringAsFixed(2));
  FFAppState().gwaResult = finalGwa;

  // Combine all grades for honor checking
  List<double> allGrades = [...gradesA, ...gradesB];

  // Determine Latin honor eligibility
  if (finalGwa > 3.0) {
    FFAppState().gwaHonor = 4; // Failed
    FFAppState().gwaDesc = 'Failed';
  } else if (finalGwa < 1) {
    FFAppState().gwaHonor = 5; //Error
    FFAppState().gwaDesc = 'You must be missing an input';
  } else if (finalGwa <= 1.25 && !hasGradeHigherThan(allGrades, 1.5)) {
    FFAppState().gwaHonor = 1;
    FFAppState().gwaDesc = 'Summa Cum Laude';
  } else if (finalGwa <= 1.5 && !hasGradeHigherThan(allGrades, 2.0)) {
    FFAppState().gwaHonor = 2;
    FFAppState().gwaDesc = 'Magna Cum Laude';
  } else if (finalGwa <= 1.75 && !hasGradeHigherThan(allGrades, 2.5)) {
    FFAppState().gwaHonor = 3;
    FFAppState().gwaDesc = 'Cum Laude';
  } else {
    FFAppState().gwaHonor = 0;
    FFAppState().gwaDesc = '';
  }
}
