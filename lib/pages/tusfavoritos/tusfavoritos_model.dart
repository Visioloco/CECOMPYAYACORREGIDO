import '/flutter_flow/flutter_flow_util.dart';
import 'tusfavoritos_widget.dart' show TusfavoritosWidget;
import 'package:flutter/material.dart';

class TusfavoritosModel extends FlutterFlowModel<TusfavoritosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
