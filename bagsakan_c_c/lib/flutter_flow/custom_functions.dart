
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int calculateCardCount(
  List<double>? gradeListA,
  List<double>? gradeListB,
) {
  final listA = gradeListA ?? [];
  final listB = gradeListB ?? [];

  // The number of cards needed is equal to the maximum length
  // of either list, since each card requires one grade from each list
  if (listA.length > listB.length) {
    return listA.length;
  }
  return listB.length;
}
