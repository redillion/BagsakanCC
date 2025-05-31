import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetTasksRecord extends FirestoreRecord {
  SetTasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tasktitle" field.
  String? _tasktitle;
  String get tasktitle => _tasktitle ?? '';
  bool hasTasktitle() => _tasktitle != null;

  // "taskdescription" field.
  String? _taskdescription;
  String get taskdescription => _taskdescription ?? '';
  bool hasTaskdescription() => _taskdescription != null;

  // "taskdatetime" field.
  DateTime? _taskdatetime;
  DateTime? get taskdatetime => _taskdatetime;
  bool hasTaskdatetime() => _taskdatetime != null;

  void _initializeFields() {
    _tasktitle = snapshotData['tasktitle'] as String?;
    _taskdescription = snapshotData['taskdescription'] as String?;
    _taskdatetime = snapshotData['taskdatetime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SetTasks');

  static Stream<SetTasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SetTasksRecord.fromSnapshot(s));

  static Future<SetTasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SetTasksRecord.fromSnapshot(s));

  static SetTasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SetTasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SetTasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SetTasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SetTasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SetTasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSetTasksRecordData({
  String? tasktitle,
  String? taskdescription,
  DateTime? taskdatetime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tasktitle': tasktitle,
      'taskdescription': taskdescription,
      'taskdatetime': taskdatetime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SetTasksRecordDocumentEquality implements Equality<SetTasksRecord> {
  const SetTasksRecordDocumentEquality();

  @override
  bool equals(SetTasksRecord? e1, SetTasksRecord? e2) {
    return e1?.tasktitle == e2?.tasktitle &&
        e1?.taskdescription == e2?.taskdescription &&
        e1?.taskdatetime == e2?.taskdatetime;
  }

  @override
  int hash(SetTasksRecord? e) => const ListEquality()
      .hash([e?.tasktitle, e?.taskdescription, e?.taskdatetime]);

  @override
  bool isValidKey(Object? o) => o is SetTasksRecord;
}
