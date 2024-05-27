import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "VIP" field.
  String? _vip;
  String get vip => _vip ?? '';
  bool hasVip() => _vip != null;

  // "listaordenada" field.
  List<DocumentReference>? _listaordenada;
  List<DocumentReference> get listaordenada => _listaordenada ?? const [];
  bool hasListaordenada() => _listaordenada != null;

  // "COMPRADOR" field.
  bool? _comprador;
  bool get comprador => _comprador ?? false;
  bool hasComprador() => _comprador != null;

  // "VENDEDOR" field.
  bool? _vendedor;
  bool get vendedor => _vendedor ?? false;
  bool hasVendedor() => _vendedor != null;

  // "cantidad" field.
  List<DocumentReference>? _cantidad;
  List<DocumentReference> get cantidad => _cantidad ?? const [];
  bool hasCantidad() => _cantidad != null;

  // "creados" field.
  int? _creados;
  int get creados => _creados ?? 0;
  bool hasCreados() => _creados != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _vip = snapshotData['VIP'] as String?;
    _listaordenada = getDataList(snapshotData['listaordenada']);
    _comprador = snapshotData['COMPRADOR'] as bool?;
    _vendedor = snapshotData['VENDEDOR'] as bool?;
    _cantidad = getDataList(snapshotData['cantidad']);
    _creados = castToType<int>(snapshotData['creados']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? direccion,
  String? vip,
  bool? comprador,
  bool? vendedor,
  int? creados,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'direccion': direccion,
      'VIP': vip,
      'COMPRADOR': comprador,
      'VENDEDOR': vendedor,
      'creados': creados,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.direccion == e2?.direccion &&
        e1?.vip == e2?.vip &&
        listEquality.equals(e1?.listaordenada, e2?.listaordenada) &&
        e1?.comprador == e2?.comprador &&
        e1?.vendedor == e2?.vendedor &&
        listEquality.equals(e1?.cantidad, e2?.cantidad) &&
        e1?.creados == e2?.creados;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.direccion,
        e?.vip,
        e?.listaordenada,
        e?.comprador,
        e?.vendedor,
        e?.cantidad,
        e?.creados
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
