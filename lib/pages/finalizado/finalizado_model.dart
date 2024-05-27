import '/flutter_flow/flutter_flow_util.dart';
import 'finalizado_widget.dart' show FinalizadoWidget;
import 'package:flutter/material.dart';

class FinalizadoModel extends FlutterFlowModel<FinalizadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
