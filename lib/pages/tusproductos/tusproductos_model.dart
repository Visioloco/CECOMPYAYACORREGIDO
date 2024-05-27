import '/flutter_flow/flutter_flow_util.dart';
import 'tusproductos_widget.dart' show TusproductosWidget;
import 'package:flutter/material.dart';

class TusproductosModel extends FlutterFlowModel<TusproductosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
