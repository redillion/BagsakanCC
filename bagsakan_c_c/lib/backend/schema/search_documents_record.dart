import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchDocumentsRecord extends FirestoreRecord {
  SearchDocumentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SearchDocuments');

  static Stream<SearchDocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchDocumentsRecord.fromSnapshot(s));

  static Future<SearchDocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchDocumentsRecord.fromSnapshot(s));

  static SearchDocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchDocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchDocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchDocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchDocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchDocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchDocumentsRecordData({
  String? title,
  String? description,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchDocumentsRecordDocumentEquality
    implements Equality<SearchDocumentsRecord> {
  const SearchDocumentsRecordDocumentEquality();

  @override
  bool equals(SearchDocumentsRecord? e1, SearchDocumentsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.url == e2?.url;
  }

  @override
  int hash(SearchDocumentsRecord? e) =>
      const ListEquality().hash([e?.title, e?.description, e?.url]);

  @override
  bool isValidKey(Object? o) => o is SearchDocumentsRecord;
}
