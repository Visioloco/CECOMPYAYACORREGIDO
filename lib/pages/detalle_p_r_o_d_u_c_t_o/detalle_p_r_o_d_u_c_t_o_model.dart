import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_p_r_o_d_u_c_t_o_widget.dart' show DetallePRODUCTOWidget;
import 'package:flutter/material.dart';

class DetallePRODUCTOModel extends FlutterFlowModel<DetallePRODUCTOWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductoselecionadoRecord? productoCreadoExits;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductoselecionadoRecord? productoCreado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
