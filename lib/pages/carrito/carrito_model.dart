import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carrito_widget.dart' show CarritoWidget;
import 'package:flutter/material.dart';

class CarritoModel extends FlutterFlowModel<CarritoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdenRecord? orden;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
