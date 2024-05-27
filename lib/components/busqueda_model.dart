import '/flutter_flow/flutter_flow_util.dart';
import 'busqueda_widget.dart' show BusquedaWidget;
import 'package:flutter/material.dart';

class BusquedaModel extends FlutterFlowModel<BusquedaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
