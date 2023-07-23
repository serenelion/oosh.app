import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesRecord extends FirestoreRecord {
  ChatMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "b_is_respondee" field.
  bool? _bIsRespondee;
  bool get bIsRespondee => _bIsRespondee ?? false;
  bool hasBIsRespondee() => _bIsRespondee != null;

  void _initializeFields() {
    _chat = snapshotData['chat'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _bIsRespondee = snapshotData['b_is_respondee'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesRecord.fromSnapshot(s));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesRecord.fromSnapshot(s));

  static ChatMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesRecordData({
  DocumentReference? chat,
  String? text,
  String? image,
  DateTime? timestamp,
  DocumentReference? userReference,
  bool? bIsRespondee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chat': chat,
      'text': text,
      'image': image,
      'timestamp': timestamp,
      'user_reference': userReference,
      'b_is_respondee': bIsRespondee,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesRecordDocumentEquality
    implements Equality<ChatMessagesRecord> {
  const ChatMessagesRecordDocumentEquality();

  @override
  bool equals(ChatMessagesRecord? e1, ChatMessagesRecord? e2) {
    return e1?.chat == e2?.chat &&
        e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userReference == e2?.userReference &&
        e1?.bIsRespondee == e2?.bIsRespondee;
  }

  @override
  int hash(ChatMessagesRecord? e) => const ListEquality().hash([
        e?.chat,
        e?.text,
        e?.image,
        e?.timestamp,
        e?.userReference,
        e?.bIsRespondee
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesRecord;
}
