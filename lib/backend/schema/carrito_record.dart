import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CREADOR" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "CONTARPRODUCTO" field.
  int? _contarproducto;
  int get contarproducto => _contarproducto ?? 0;
  bool hasContarproducto() => _contarproducto != null;

  // "CANTIDAD" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "SELECCIONARPRODUCTO" field.
  List<DocumentReference>? _seleccionarproducto;
  List<DocumentReference> get seleccionarproducto =>
      _seleccionarproducto ?? const [];
  bool hasSeleccionarproducto() => _seleccionarproducto != null;

  void _initializeFields() {
    _creador = snapshotData['CREADOR'] as DocumentReference?;
    _contarproducto = castToType<int>(snapshotData['CONTARPRODUCTO']);
    _cantidad = castToType<double>(snapshotData['CANTIDAD']);
    _seleccionarproducto = getDataList(snapshotData['SELECCIONARPRODUCTO']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CARRITO');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? creador,
  int? contarproducto,
  double? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CREADOR': creador,
      'CONTARPRODUCTO': contarproducto,
      'CANTIDAD': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creador == e2?.creador &&
        e1?.contarproducto == e2?.contarproducto &&
        e1?.cantidad == e2?.cantidad &&
        listEquality.equals(e1?.seleccionarproducto, e2?.seleccionarproducto);
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash(
      [e?.creador, e?.contarproducto, e?.cantidad, e?.seleccionarproducto]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
