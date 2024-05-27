import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "DESCRIPCION" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "PRECIO" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "FECHACREADA" field.
  DateTime? _fechacreada;
  DateTime? get fechacreada => _fechacreada;
  bool hasFechacreada() => _fechacreada != null;

  // "FECHAMODIFICADA" field.
  DateTime? _fechamodificada;
  DateTime? get fechamodificada => _fechamodificada;
  bool hasFechamodificada() => _fechamodificada != null;

  // "EN_VENTA" field.
  String? _enVenta;
  String get enVenta => _enVenta ?? '';
  bool hasEnVenta() => _enVenta != null;

  // "IMAGEN" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "imagenes" field.
  List<String>? _imagenes;
  List<String> get imagenes => _imagenes ?? const [];
  bool hasImagenes() => _imagenes != null;

  // "GUARDAR" field.
  List<DocumentReference>? _guardar;
  List<DocumentReference> get guardar => _guardar ?? const [];
  bool hasGuardar() => _guardar != null;

  // "creados" field.
  List<double>? _creados;
  List<double> get creados => _creados ?? const [];
  bool hasCreados() => _creados != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "CREADORPOR" field.
  String? _creadorpor;
  String get creadorpor => _creadorpor ?? '';
  bool hasCreadorpor() => _creadorpor != null;

  // "CIUDAD" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  void _initializeFields() {
    _nombre = snapshotData['NOMBRE'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _precio = castToType<double>(snapshotData['PRECIO']);
    _fechacreada = snapshotData['FECHACREADA'] as DateTime?;
    _fechamodificada = snapshotData['FECHAMODIFICADA'] as DateTime?;
    _enVenta = snapshotData['EN_VENTA'] as String?;
    _imagen = snapshotData['IMAGEN'] as String?;
    _creador = snapshotData['creador'] as DocumentReference?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _imagenes = getDataList(snapshotData['imagenes']);
    _guardar = getDataList(snapshotData['GUARDAR']);
    _creados = getDataList(snapshotData['creados']);
    _telefono = snapshotData['telefono'] as String?;
    _creadorpor = snapshotData['CREADORPOR'] as String?;
    _ciudad = snapshotData['CIUDAD'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PRODUCTO');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoRecordData({
  String? nombre,
  String? descripcion,
  double? precio,
  DateTime? fechacreada,
  DateTime? fechamodificada,
  String? enVenta,
  String? imagen,
  DocumentReference? creador,
  String? ubicacion,
  String? telefono,
  String? creadorpor,
  String? ciudad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOMBRE': nombre,
      'DESCRIPCION': descripcion,
      'PRECIO': precio,
      'FECHACREADA': fechacreada,
      'FECHAMODIFICADA': fechamodificada,
      'EN_VENTA': enVenta,
      'IMAGEN': imagen,
      'creador': creador,
      'ubicacion': ubicacion,
      'telefono': telefono,
      'CREADORPOR': creadorpor,
      'CIUDAD': ciudad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoRecordDocumentEquality implements Equality<ProductoRecord> {
  const ProductoRecordDocumentEquality();

  @override
  bool equals(ProductoRecord? e1, ProductoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.fechacreada == e2?.fechacreada &&
        e1?.fechamodificada == e2?.fechamodificada &&
        e1?.enVenta == e2?.enVenta &&
        e1?.imagen == e2?.imagen &&
        e1?.creador == e2?.creador &&
        e1?.ubicacion == e2?.ubicacion &&
        listEquality.equals(e1?.imagenes, e2?.imagenes) &&
        listEquality.equals(e1?.guardar, e2?.guardar) &&
        listEquality.equals(e1?.creados, e2?.creados) &&
        e1?.telefono == e2?.telefono &&
        e1?.creadorpor == e2?.creadorpor &&
        e1?.ciudad == e2?.ciudad;
  }

  @override
  int hash(ProductoRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.precio,
        e?.fechacreada,
        e?.fechamodificada,
        e?.enVenta,
        e?.imagen,
        e?.creador,
        e?.ubicacion,
        e?.imagenes,
        e?.guardar,
        e?.creados,
        e?.telefono,
        e?.creadorpor,
        e?.ciudad
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoRecord;
}
