import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoselecionadoRecord extends FirestoreRecord {
  ProductoselecionadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PRODUCTO" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

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

  // "SUBTOTAL" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "CREADOR" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "CANTIDAD" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "CARRITO" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "IMAGEN" field.
  List<String>? _imagen;
  List<String> get imagen => _imagen ?? const [];
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _producto = snapshotData['PRODUCTO'] as DocumentReference?;
    _nombre = snapshotData['NOMBRE'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _precio = castToType<double>(snapshotData['PRECIO']);
    _subtotal = castToType<double>(snapshotData['SUBTOTAL']);
    _creador = snapshotData['CREADOR'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['CANTIDAD']);
    _carrito = snapshotData['CARRITO'] as DocumentReference?;
    _imagen = getDataList(snapshotData['IMAGEN']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PRODUCTOSELECIONADO');

  static Stream<ProductoselecionadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoselecionadoRecord.fromSnapshot(s));

  static Future<ProductoselecionadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductoselecionadoRecord.fromSnapshot(s));

  static ProductoselecionadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoselecionadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoselecionadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoselecionadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoselecionadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoselecionadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoselecionadoRecordData({
  DocumentReference? producto,
  String? nombre,
  String? descripcion,
  double? precio,
  double? subtotal,
  DocumentReference? creador,
  int? cantidad,
  DocumentReference? carrito,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PRODUCTO': producto,
      'NOMBRE': nombre,
      'DESCRIPCION': descripcion,
      'PRECIO': precio,
      'SUBTOTAL': subtotal,
      'CREADOR': creador,
      'CANTIDAD': cantidad,
      'CARRITO': carrito,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoselecionadoRecordDocumentEquality
    implements Equality<ProductoselecionadoRecord> {
  const ProductoselecionadoRecordDocumentEquality();

  @override
  bool equals(ProductoselecionadoRecord? e1, ProductoselecionadoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.producto == e2?.producto &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.subtotal == e2?.subtotal &&
        e1?.creador == e2?.creador &&
        e1?.cantidad == e2?.cantidad &&
        e1?.carrito == e2?.carrito &&
        listEquality.equals(e1?.imagen, e2?.imagen);
  }

  @override
  int hash(ProductoselecionadoRecord? e) => const ListEquality().hash([
        e?.producto,
        e?.nombre,
        e?.descripcion,
        e?.precio,
        e?.subtotal,
        e?.creador,
        e?.cantidad,
        e?.carrito,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoselecionadoRecord;
}
