import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryLogRecord extends FirestoreRecord {
  HistoryLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "logID" field.
  String? _logID;
  String get logID => _logID ?? '';
  bool hasLogID() => _logID != null;

  // "unitListA" field.
  List<int>? _unitListA;
  List<int> get unitListA => _unitListA ?? const [];
  bool hasUnitListA() => _unitListA != null;

  // "unitListB" field.
  List<int>? _unitListB;
  List<int> get unitListB => _unitListB ?? const [];
  bool hasUnitListB() => _unitListB != null;

  // "gradeListA" field.
  List<double>? _gradeListA;
  List<double> get gradeListA => _gradeListA ?? const [];
  bool hasGradeListA() => _gradeListA != null;

  // "gradeListB" field.
  List<double>? _gradeListB;
  List<double> get gradeListB => _gradeListB ?? const [];
  bool hasGradeListB() => _gradeListB != null;

  // "gwaResult" field.
  double? _gwaResult;
  double get gwaResult => _gwaResult ?? 0.0;
  bool hasGwaResult() => _gwaResult != null;

  // "timesaved" field.
  DateTime? _timesaved;
  DateTime? get timesaved => _timesaved;
  bool hasTimesaved() => _timesaved != null;

  // "logName" field.
  String? _logName;
  String get logName => _logName ?? '';
  bool hasLogName() => _logName != null;

  // "gwaHonor" field.
  int? _gwaHonor;
  int get gwaHonor => _gwaHonor ?? 0;
  bool hasGwaHonor() => _gwaHonor != null;

  // "courseNameA" field.
  List<String>? _courseNameA;
  List<String> get courseNameA => _courseNameA ?? const [];
  bool hasCourseNameA() => _courseNameA != null;

  // "courseNameB" field.
  List<String>? _courseNameB;
  List<String> get courseNameB => _courseNameB ?? const [];
  bool hasCourseNameB() => _courseNameB != null;

  // "cardNumber" field.
  double? _cardNumber;
  double get cardNumber => _cardNumber ?? 0.0;
  bool hasCardNumber() => _cardNumber != null;

  void _initializeFields() {
    _logID = snapshotData['logID'] as String?;
    _unitListA = getDataList(snapshotData['unitListA']);
    _unitListB = getDataList(snapshotData['unitListB']);
    _gradeListA = getDataList(snapshotData['gradeListA']);
    _gradeListB = getDataList(snapshotData['gradeListB']);
    _gwaResult = castToType<double>(snapshotData['gwaResult']);
    _timesaved = snapshotData['timesaved'] as DateTime?;
    _logName = snapshotData['logName'] as String?;
    _gwaHonor = castToType<int>(snapshotData['gwaHonor']);
    _courseNameA = getDataList(snapshotData['courseNameA']);
    _courseNameB = getDataList(snapshotData['courseNameB']);
    _cardNumber = castToType<double>(snapshotData['cardNumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historyLog');

  static Stream<HistoryLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryLogRecord.fromSnapshot(s));

  static Future<HistoryLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryLogRecord.fromSnapshot(s));

  static HistoryLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryLogRecordData({
  String? logID,
  double? gwaResult,
  DateTime? timesaved,
  String? logName,
  int? gwaHonor,
  double? cardNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'logID': logID,
      'gwaResult': gwaResult,
      'timesaved': timesaved,
      'logName': logName,
      'gwaHonor': gwaHonor,
      'cardNumber': cardNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryLogRecordDocumentEquality implements Equality<HistoryLogRecord> {
  const HistoryLogRecordDocumentEquality();

  @override
  bool equals(HistoryLogRecord? e1, HistoryLogRecord? e2) {
    const listEquality = ListEquality();
    return e1?.logID == e2?.logID &&
        listEquality.equals(e1?.unitListA, e2?.unitListA) &&
        listEquality.equals(e1?.unitListB, e2?.unitListB) &&
        listEquality.equals(e1?.gradeListA, e2?.gradeListA) &&
        listEquality.equals(e1?.gradeListB, e2?.gradeListB) &&
        e1?.gwaResult == e2?.gwaResult &&
        e1?.timesaved == e2?.timesaved &&
        e1?.logName == e2?.logName &&
        e1?.gwaHonor == e2?.gwaHonor &&
        listEquality.equals(e1?.courseNameA, e2?.courseNameA) &&
        listEquality.equals(e1?.courseNameB, e2?.courseNameB) &&
        e1?.cardNumber == e2?.cardNumber;
  }

  @override
  int hash(HistoryLogRecord? e) => const ListEquality().hash([
        e?.logID,
        e?.unitListA,
        e?.unitListB,
        e?.gradeListA,
        e?.gradeListB,
        e?.gwaResult,
        e?.timesaved,
        e?.logName,
        e?.gwaHonor,
        e?.courseNameA,
        e?.courseNameB,
        e?.cardNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is HistoryLogRecord;
}
