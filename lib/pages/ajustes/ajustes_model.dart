import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_widget.dart' show AjustesWidget;
import 'package:flutter/material.dart';

class AjustesModel extends FlutterFlowModel<AjustesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
