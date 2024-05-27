import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menuvender_widget.dart' show MenuvenderWidget;
import 'package:flutter/material.dart';

class MenuvenderModel extends FlutterFlowModel<MenuvenderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductoRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
