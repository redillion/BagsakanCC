import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tasktitle = prefs.getStringList('ff_tasktitle') ?? _tasktitle;
    });
    _safeInit(() {
      _taskdesc = prefs.getStringList('ff_taskdesc') ?? _taskdesc;
    });
    _safeInit(() {
      _taskdatetime = prefs
              .getStringList('ff_taskdatetime')
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _taskdatetime;
    });
    _safeInit(() {
      _gwaResult = prefs.getDouble('ff_gwaResult') ?? _gwaResult;
    });
    _safeInit(() {
      _honorTitle = prefs.getString('ff_honorTitle') ?? _honorTitle;
    });
    _safeInit(() {
      _gwaHIstory = prefs.getStringList('ff_gwaHIstory')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _gwaHIstory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _cardList = [];
  List<String> get cardList => _cardList;
  set cardList(List<String> value) {
    _cardList = value;
  }

  void addToCardList(String value) {
    cardList.add(value);
  }

  void removeFromCardList(String value) {
    cardList.remove(value);
  }

  void removeAtIndexFromCardList(int index) {
    cardList.removeAt(index);
  }

  void updateCardListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cardList[index] = updateFn(_cardList[index]);
  }

  void insertAtIndexInCardList(int index, String value) {
    cardList.insert(index, value);
  }

  List<String> _taskList = [];
  List<String> get taskList => _taskList;
  set taskList(List<String> value) {
    _taskList = value;
  }

  void addToTaskList(String value) {
    taskList.add(value);
  }

  void removeFromTaskList(String value) {
    taskList.remove(value);
  }

  void removeAtIndexFromTaskList(int index) {
    taskList.removeAt(index);
  }

  void updateTaskListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    taskList[index] = updateFn(_taskList[index]);
  }

  void insertAtIndexInTaskList(int index, String value) {
    taskList.insert(index, value);
  }

  String _logtitle = '';
  String get logtitle => _logtitle;
  set logtitle(String value) {
    _logtitle = value;
  }

  double _logresults = 0.0;
  double get logresults => _logresults;
  set logresults(double value) {
    _logresults = value;
  }

  String _logconclusion = '';
  String get logconclusion => _logconclusion;
  set logconclusion(String value) {
    _logconclusion = value;
  }

  List<String> _loglist = [];
  List<String> get loglist => _loglist;
  set loglist(List<String> value) {
    _loglist = value;
  }

  void addToLoglist(String value) {
    loglist.add(value);
  }

  void removeFromLoglist(String value) {
    loglist.remove(value);
  }

  void removeAtIndexFromLoglist(int index) {
    loglist.removeAt(index);
  }

  void updateLoglistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    loglist[index] = updateFn(_loglist[index]);
  }

  void insertAtIndexInLoglist(int index, String value) {
    loglist.insert(index, value);
  }

  List<int> _Unit = [];
  List<int> get Unit => _Unit;
  set Unit(List<int> value) {
    _Unit = value;
  }

  void addToUnit(int value) {
    Unit.add(value);
  }

  void removeFromUnit(int value) {
    Unit.remove(value);
  }

  void removeAtIndexFromUnit(int index) {
    Unit.removeAt(index);
  }

  void updateUnitAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    Unit[index] = updateFn(_Unit[index]);
  }

  void insertAtIndexInUnit(int index, int value) {
    Unit.insert(index, value);
  }

  List<double> _Grade = [];
  List<double> get Grade => _Grade;
  set Grade(List<double> value) {
    _Grade = value;
  }

  void addToGrade(double value) {
    Grade.add(value);
  }

  void removeFromGrade(double value) {
    Grade.remove(value);
  }

  void removeAtIndexFromGrade(int index) {
    Grade.removeAt(index);
  }

  void updateGradeAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    Grade[index] = updateFn(_Grade[index]);
  }

  void insertAtIndexInGrade(int index, double value) {
    Grade.insert(index, value);
  }

  List<String> _CourseName = [];
  List<String> get CourseName => _CourseName;
  set CourseName(List<String> value) {
    _CourseName = value;
  }

  void addToCourseName(String value) {
    CourseName.add(value);
  }

  void removeFromCourseName(String value) {
    CourseName.remove(value);
  }

  void removeAtIndexFromCourseName(int index) {
    CourseName.removeAt(index);
  }

  void updateCourseNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    CourseName[index] = updateFn(_CourseName[index]);
  }

  void insertAtIndexInCourseName(int index, String value) {
    CourseName.insert(index, value);
  }

  List<int> _Unit1 = [];
  List<int> get Unit1 => _Unit1;
  set Unit1(List<int> value) {
    _Unit1 = value;
  }

  void addToUnit1(int value) {
    Unit1.add(value);
  }

  void removeFromUnit1(int value) {
    Unit1.remove(value);
  }

  void removeAtIndexFromUnit1(int index) {
    Unit1.removeAt(index);
  }

  void updateUnit1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    Unit1[index] = updateFn(_Unit1[index]);
  }

  void insertAtIndexInUnit1(int index, int value) {
    Unit1.insert(index, value);
  }

  List<String> _CourseName1 = [];
  List<String> get CourseName1 => _CourseName1;
  set CourseName1(List<String> value) {
    _CourseName1 = value;
  }

  void addToCourseName1(String value) {
    CourseName1.add(value);
  }

  void removeFromCourseName1(String value) {
    CourseName1.remove(value);
  }

  void removeAtIndexFromCourseName1(int index) {
    CourseName1.removeAt(index);
  }

  void updateCourseName1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    CourseName1[index] = updateFn(_CourseName1[index]);
  }

  void insertAtIndexInCourseName1(int index, String value) {
    CourseName1.insert(index, value);
  }

  List<double> _Grade1 = [];
  List<double> get Grade1 => _Grade1;
  set Grade1(List<double> value) {
    _Grade1 = value;
  }

  void addToGrade1(double value) {
    Grade1.add(value);
  }

  void removeFromGrade1(double value) {
    Grade1.remove(value);
  }

  void removeAtIndexFromGrade1(int index) {
    Grade1.removeAt(index);
  }

  void updateGrade1AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    Grade1[index] = updateFn(_Grade1[index]);
  }

  void insertAtIndexInGrade1(int index, double value) {
    Grade1.insert(index, value);
  }

  List<dynamic> _cardslist = [jsonDecode('{}')];
  List<dynamic> get cardslist => _cardslist;
  set cardslist(List<dynamic> value) {
    _cardslist = value;
  }

  void addToCardslist(dynamic value) {
    cardslist.add(value);
  }

  void removeFromCardslist(dynamic value) {
    cardslist.remove(value);
  }

  void removeAtIndexFromCardslist(int index) {
    cardslist.removeAt(index);
  }

  void updateCardslistAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    cardslist[index] = updateFn(_cardslist[index]);
  }

  void insertAtIndexInCardslist(int index, dynamic value) {
    cardslist.insert(index, value);
  }

  List<String> _tasktitle = [];
  List<String> get tasktitle => _tasktitle;
  set tasktitle(List<String> value) {
    _tasktitle = value;
    prefs.setStringList('ff_tasktitle', value);
  }

  void addToTasktitle(String value) {
    tasktitle.add(value);
    prefs.setStringList('ff_tasktitle', _tasktitle);
  }

  void removeFromTasktitle(String value) {
    tasktitle.remove(value);
    prefs.setStringList('ff_tasktitle', _tasktitle);
  }

  void removeAtIndexFromTasktitle(int index) {
    tasktitle.removeAt(index);
    prefs.setStringList('ff_tasktitle', _tasktitle);
  }

  void updateTasktitleAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tasktitle[index] = updateFn(_tasktitle[index]);
    prefs.setStringList('ff_tasktitle', _tasktitle);
  }

  void insertAtIndexInTasktitle(int index, String value) {
    tasktitle.insert(index, value);
    prefs.setStringList('ff_tasktitle', _tasktitle);
  }

  List<String> _taskdesc = [];
  List<String> get taskdesc => _taskdesc;
  set taskdesc(List<String> value) {
    _taskdesc = value;
    prefs.setStringList('ff_taskdesc', value);
  }

  void addToTaskdesc(String value) {
    taskdesc.add(value);
    prefs.setStringList('ff_taskdesc', _taskdesc);
  }

  void removeFromTaskdesc(String value) {
    taskdesc.remove(value);
    prefs.setStringList('ff_taskdesc', _taskdesc);
  }

  void removeAtIndexFromTaskdesc(int index) {
    taskdesc.removeAt(index);
    prefs.setStringList('ff_taskdesc', _taskdesc);
  }

  void updateTaskdescAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    taskdesc[index] = updateFn(_taskdesc[index]);
    prefs.setStringList('ff_taskdesc', _taskdesc);
  }

  void insertAtIndexInTaskdesc(int index, String value) {
    taskdesc.insert(index, value);
    prefs.setStringList('ff_taskdesc', _taskdesc);
  }

  List<DateTime> _taskdatetime = [];
  List<DateTime> get taskdatetime => _taskdatetime;
  set taskdatetime(List<DateTime> value) {
    _taskdatetime = value;
    prefs.setStringList('ff_taskdatetime',
        value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void addToTaskdatetime(DateTime value) {
    taskdatetime.add(value);
    prefs.setStringList('ff_taskdatetime',
        _taskdatetime.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeFromTaskdatetime(DateTime value) {
    taskdatetime.remove(value);
    prefs.setStringList('ff_taskdatetime',
        _taskdatetime.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeAtIndexFromTaskdatetime(int index) {
    taskdatetime.removeAt(index);
    prefs.setStringList('ff_taskdatetime',
        _taskdatetime.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void updateTaskdatetimeAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    taskdatetime[index] = updateFn(_taskdatetime[index]);
    prefs.setStringList('ff_taskdatetime',
        _taskdatetime.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void insertAtIndexInTaskdatetime(int index, DateTime value) {
    taskdatetime.insert(index, value);
    prefs.setStringList('ff_taskdatetime',
        _taskdatetime.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  double _gwaResult = 0.0;
  double get gwaResult => _gwaResult;
  set gwaResult(double value) {
    _gwaResult = value;
    prefs.setDouble('ff_gwaResult', value);
  }

  String _honorTitle = '';
  String get honorTitle => _honorTitle;
  set honorTitle(String value) {
    _honorTitle = value;
    prefs.setString('ff_honorTitle', value);
  }

  List<dynamic> _gwaHIstory = [];
  List<dynamic> get gwaHIstory => _gwaHIstory;
  set gwaHIstory(List<dynamic> value) {
    _gwaHIstory = value;
    prefs.setStringList(
        'ff_gwaHIstory', value.map((x) => jsonEncode(x)).toList());
  }

  void addToGwaHIstory(dynamic value) {
    gwaHIstory.add(value);
    prefs.setStringList(
        'ff_gwaHIstory', _gwaHIstory.map((x) => jsonEncode(x)).toList());
  }

  void removeFromGwaHIstory(dynamic value) {
    gwaHIstory.remove(value);
    prefs.setStringList(
        'ff_gwaHIstory', _gwaHIstory.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromGwaHIstory(int index) {
    gwaHIstory.removeAt(index);
    prefs.setStringList(
        'ff_gwaHIstory', _gwaHIstory.map((x) => jsonEncode(x)).toList());
  }

  void updateGwaHIstoryAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    gwaHIstory[index] = updateFn(_gwaHIstory[index]);
    prefs.setStringList(
        'ff_gwaHIstory', _gwaHIstory.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInGwaHIstory(int index, dynamic value) {
    gwaHIstory.insert(index, value);
    prefs.setStringList(
        'ff_gwaHIstory', _gwaHIstory.map((x) => jsonEncode(x)).toList());
  }

  int _gwaHonor = 0;
  int get gwaHonor => _gwaHonor;
  set gwaHonor(int value) {
    _gwaHonor = value;
  }

  String _gwaDesc = '';
  String get gwaDesc => _gwaDesc;
  set gwaDesc(String value) {
    _gwaDesc = value;
  }

  List<String> _simcardList = [];
  List<String> get simcardList => _simcardList;
  set simcardList(List<String> value) {
    _simcardList = value;
  }

  void addToSimcardList(String value) {
    simcardList.add(value);
  }

  void removeFromSimcardList(String value) {
    simcardList.remove(value);
  }

  void removeAtIndexFromSimcardList(int index) {
    simcardList.removeAt(index);
  }

  void updateSimcardListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    simcardList[index] = updateFn(_simcardList[index]);
  }

  void insertAtIndexInSimcardList(int index, String value) {
    simcardList.insert(index, value);
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }

  List<double> _gradeListA = [];
  List<double> get gradeListA => _gradeListA;
  set gradeListA(List<double> value) {
    _gradeListA = value;
  }

  void addToGradeListA(double value) {
    gradeListA.add(value);
  }

  void removeFromGradeListA(double value) {
    gradeListA.remove(value);
  }

  void removeAtIndexFromGradeListA(int index) {
    gradeListA.removeAt(index);
  }

  void updateGradeListAAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    gradeListA[index] = updateFn(_gradeListA[index]);
  }

  void insertAtIndexInGradeListA(int index, double value) {
    gradeListA.insert(index, value);
  }

  List<double> _gradeListB = [];
  List<double> get gradeListB => _gradeListB;
  set gradeListB(List<double> value) {
    _gradeListB = value;
  }

  void addToGradeListB(double value) {
    gradeListB.add(value);
  }

  void removeFromGradeListB(double value) {
    gradeListB.remove(value);
  }

  void removeAtIndexFromGradeListB(int index) {
    gradeListB.removeAt(index);
  }

  void updateGradeListBAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    gradeListB[index] = updateFn(_gradeListB[index]);
  }

  void insertAtIndexInGradeListB(int index, double value) {
    gradeListB.insert(index, value);
  }

  List<int> _unitListA = [];
  List<int> get unitListA => _unitListA;
  set unitListA(List<int> value) {
    _unitListA = value;
  }

  void addToUnitListA(int value) {
    unitListA.add(value);
  }

  void removeFromUnitListA(int value) {
    unitListA.remove(value);
  }

  void removeAtIndexFromUnitListA(int index) {
    unitListA.removeAt(index);
  }

  void updateUnitListAAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    unitListA[index] = updateFn(_unitListA[index]);
  }

  void insertAtIndexInUnitListA(int index, int value) {
    unitListA.insert(index, value);
  }

  List<int> _unitListB = [];
  List<int> get unitListB => _unitListB;
  set unitListB(List<int> value) {
    _unitListB = value;
  }

  void addToUnitListB(int value) {
    unitListB.add(value);
  }

  void removeFromUnitListB(int value) {
    unitListB.remove(value);
  }

  void removeAtIndexFromUnitListB(int index) {
    unitListB.removeAt(index);
  }

  void updateUnitListBAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    unitListB[index] = updateFn(_unitListB[index]);
  }

  void insertAtIndexInUnitListB(int index, int value) {
    unitListB.insert(index, value);
  }

  List<String> _courseNameA = [];
  List<String> get courseNameA => _courseNameA;
  set courseNameA(List<String> value) {
    _courseNameA = value;
  }

  void addToCourseNameA(String value) {
    courseNameA.add(value);
  }

  void removeFromCourseNameA(String value) {
    courseNameA.remove(value);
  }

  void removeAtIndexFromCourseNameA(int index) {
    courseNameA.removeAt(index);
  }

  void updateCourseNameAAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    courseNameA[index] = updateFn(_courseNameA[index]);
  }

  void insertAtIndexInCourseNameA(int index, String value) {
    courseNameA.insert(index, value);
  }

  List<String> _courseNameB = [];
  List<String> get courseNameB => _courseNameB;
  set courseNameB(List<String> value) {
    _courseNameB = value;
  }

  void addToCourseNameB(String value) {
    courseNameB.add(value);
  }

  void removeFromCourseNameB(String value) {
    courseNameB.remove(value);
  }

  void removeAtIndexFromCourseNameB(int index) {
    courseNameB.removeAt(index);
  }

  void updateCourseNameBAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    courseNameB[index] = updateFn(_courseNameB[index]);
  }

  void insertAtIndexInCourseNameB(int index, String value) {
    courseNameB.insert(index, value);
  }

  double _SimCardListA = 0.0;
  double get SimCardListA => _SimCardListA;
  set SimCardListA(double value) {
    _SimCardListA = value;
  }

  String _matchtitle = '';
  String get matchtitle => _matchtitle;
  set matchtitle(String value) {
    _matchtitle = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
