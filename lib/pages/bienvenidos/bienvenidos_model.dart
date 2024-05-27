import '/flutter_flow/flutter_flow_util.dart';
import 'bienvenidos_widget.dart' show BienvenidosWidget;
import 'package:flutter/material.dart';

class BienvenidosModel extends FlutterFlowModel<BienvenidosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
