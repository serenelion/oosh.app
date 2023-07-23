import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OoshesRecord extends FirestoreRecord {
  OoshesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "ooshName" field.
  String? _ooshName;
  String get ooshName => _ooshName ?? '';
  bool hasOoshName() => _ooshName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "oosh_creator" field.
  DocumentReference? _ooshCreator;
  DocumentReference? get ooshCreator => _ooshCreator;
  bool hasOoshCreator() => _ooshCreator != null;

  // "hashtags" field.
  List<String>? _hashtags;
  List<String> get hashtags => _hashtags ?? const [];
  bool hasHashtags() => _hashtags != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _ooshName = snapshotData['ooshName'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _link = snapshotData['link'] as String?;
    _ooshCreator = snapshotData['oosh_creator'] as DocumentReference?;
    _hashtags = getDataList(snapshotData['hashtags']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ooshes');

  static Stream<OoshesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OoshesRecord.fromSnapshot(s));

  static Future<OoshesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OoshesRecord.fromSnapshot(s));

  static OoshesRecord fromSnapshot(DocumentSnapshot snapshot) => OoshesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OoshesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OoshesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OoshesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OoshesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOoshesRecordData({
  String? id,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? ooshName,
  String? description,
  String? image,
  String? link,
  DocumentReference? ooshCreator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'ooshName': ooshName,
      'description': description,
      'image': image,
      'link': link,
      'oosh_creator': ooshCreator,
    }.withoutNulls,
  );

  return firestoreData;
}

class OoshesRecordDocumentEquality implements Equality<OoshesRecord> {
  const OoshesRecordDocumentEquality();

  @override
  bool equals(OoshesRecord? e1, OoshesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.ooshName == e2?.ooshName &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.link == e2?.link &&
        e1?.ooshCreator == e2?.ooshCreator &&
        listEquality.equals(e1?.hashtags, e2?.hashtags);
  }

  @override
  int hash(OoshesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.createdAt,
        e?.updatedAt,
        e?.ooshName,
        e?.description,
        e?.image,
        e?.link,
        e?.ooshCreator,
        e?.hashtags
      ]);

  @override
  bool isValidKey(Object? o) => o is OoshesRecord;
}
