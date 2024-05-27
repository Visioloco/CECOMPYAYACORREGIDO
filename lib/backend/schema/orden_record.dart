import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenRecord extends FirestoreRecord {
  OrdenRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "MONTO" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "STATUS" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "TAX" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "FECHACREADA" field.
  DateTime? _fechacreada;
  DateTime? get fechacreada => _fechacreada;
  bool hasFechacreada() => _fechacreada != null;

  // "CREADOR" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "LISTAORDEN" field.
  List<DocumentReference>? _listaorden;
  List<DocumentReference> get listaorden => _listaorden ?? const [];
  bool hasListaorden() => _listaorden != null;

  // "CARRITO" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "PRODUCTOSELECCIONADO" field.
  List<DocumentReference>? _productoseleccionado;
  List<DocumentReference> get productoseleccionado =>
      _productoseleccionado ?? const [];
  bool hasProductoseleccionado() => _productoseleccionado != null;

  void _initializeFields() {
    _nombre = snapshotData['NOMBRE'] as String?;
    _monto = castToType<double>(snapshotData['MONTO']);
    _status = snapshotData['STATUS'] as String?;
    _tax = castToType<double>(snapshotData['TAX']);
    _fechacreada = snapshotData['FECHACREADA'] as DateTime?;
    _creador = snapshotData['CREADOR'] as DocumentReference?;
    _listaorden = getDataList(snapshotData['LISTAORDEN']);
    _carrito = snapshotData['CARRITO'] as DocumentReference?;
    _productoseleccionado = getDataList(snapshotData['PRODUCTOSELECCIONADO']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ORDEN');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenRecord.fromSnapshot(s));

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenRecord.fromSnapshot(s));

  static OrdenRecord fromSnapshot(DocumentSnapshot snapshot) => OrdenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenRecordData({
  String? nombre,
  double? monto,
  String? status,
  double? tax,
  DateTime? fechacreada,
  DocumentReference? creador,
  DocumentReference? carrito,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOMBRE': nombre,
      'MONTO': monto,
      'STATUS': status,
      'TAX': tax,
      'FECHACREADA': fechacreada,
      'CREADOR': creador,
      'CARRITO': carrito,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenRecordDocumentEquality implements Equality<OrdenRecord> {
  const OrdenRecordDocumentEquality();

  @override
  bool equals(OrdenRecord? e1, OrdenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.monto == e2?.monto &&
        e1?.status == e2?.status &&
        e1?.tax == e2?.tax &&
        e1?.fechacreada == e2?.fechacreada &&
        e1?.creador == e2?.creador &&
        listEquality.equals(e1?.listaorden, e2?.listaorden) &&
        e1?.carrito == e2?.carrito &&
        listEquality.equals(e1?.productoseleccionado, e2?.productoseleccionado);
  }

  @override
  int hash(OrdenRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.monto,
        e?.status,
        e?.tax,
        e?.fechacreada,
        e?.creador,
        e?.listaorden,
        e?.carrito,
        e?.productoseleccionado
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdenRecord;
}
