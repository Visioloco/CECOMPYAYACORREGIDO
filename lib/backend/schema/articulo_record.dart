import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticuloRecord extends FirestoreRecord {
  ArticuloRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fechacreacion" field.
  DateTime? _fechacreacion;
  DateTime? get fechacreacion => _fechacreacion;
  bool hasFechacreacion() => _fechacreacion != null;

  // "CIUDAD" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  void _initializeFields() {
    _fotos = getDataList(snapshotData['fotos']);
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _ubicacion = snapshotData['ubicacion'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechacreacion = snapshotData['fechacreacion'] as DateTime?;
    _ciudad = snapshotData['CIUDAD'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articulo');

  static Stream<ArticuloRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticuloRecord.fromSnapshot(s));

  static Future<ArticuloRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticuloRecord.fromSnapshot(s));

  static ArticuloRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticuloRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticuloRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticuloRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticuloRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticuloRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticuloRecordData({
  String? nombre,
  int? precio,
  String? ubicacion,
  String? descripcion,
  DateTime? fechacreacion,
  String? ciudad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'ubicacion': ubicacion,
      'descripcion': descripcion,
      'fechacreacion': fechacreacion,
      'CIUDAD': ciudad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticuloRecordDocumentEquality implements Equality<ArticuloRecord> {
  const ArticuloRecordDocumentEquality();

  @override
  bool equals(ArticuloRecord? e1, ArticuloRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechacreacion == e2?.fechacreacion &&
        e1?.ciudad == e2?.ciudad;
  }

  @override
  int hash(ArticuloRecord? e) => const ListEquality().hash([
        e?.fotos,
        e?.nombre,
        e?.precio,
        e?.ubicacion,
        e?.descripcion,
        e?.fechacreacion,
        e?.ciudad
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticuloRecord;
}
