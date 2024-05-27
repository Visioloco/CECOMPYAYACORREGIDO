import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarjetaRecord extends FirestoreRecord {
  TarjetaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "CC" field.
  double? _cc;
  double get cc => _cc ?? 0.0;
  bool hasCc() => _cc != null;

  // "N_TARJETA" field.
  double? _nTarjeta;
  double get nTarjeta => _nTarjeta ?? 0.0;
  bool hasNTarjeta() => _nTarjeta != null;

  // "MES" field.
  String? _mes;
  String get mes => _mes ?? '';
  bool hasMes() => _mes != null;

  // "ANO" field.
  String? _ano;
  String get ano => _ano ?? '';
  bool hasAno() => _ano != null;

  // "CVV" field.
  String? _cvv;
  String get cvv => _cvv ?? '';
  bool hasCvv() => _cvv != null;

  void _initializeFields() {
    _nombre = snapshotData['NOMBRE'] as String?;
    _cc = castToType<double>(snapshotData['CC']);
    _nTarjeta = castToType<double>(snapshotData['N_TARJETA']);
    _mes = snapshotData['MES'] as String?;
    _ano = snapshotData['ANO'] as String?;
    _cvv = snapshotData['CVV'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TARJETA');

  static Stream<TarjetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarjetaRecord.fromSnapshot(s));

  static Future<TarjetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarjetaRecord.fromSnapshot(s));

  static TarjetaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarjetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarjetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarjetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarjetaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarjetaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarjetaRecordData({
  String? nombre,
  double? cc,
  double? nTarjeta,
  String? mes,
  String? ano,
  String? cvv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOMBRE': nombre,
      'CC': cc,
      'N_TARJETA': nTarjeta,
      'MES': mes,
      'ANO': ano,
      'CVV': cvv,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarjetaRecordDocumentEquality implements Equality<TarjetaRecord> {
  const TarjetaRecordDocumentEquality();

  @override
  bool equals(TarjetaRecord? e1, TarjetaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.cc == e2?.cc &&
        e1?.nTarjeta == e2?.nTarjeta &&
        e1?.mes == e2?.mes &&
        e1?.ano == e2?.ano &&
        e1?.cvv == e2?.cvv;
  }

  @override
  int hash(TarjetaRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.cc, e?.nTarjeta, e?.mes, e?.ano, e?.cvv]);

  @override
  bool isValidKey(Object? o) => o is TarjetaRecord;
}
