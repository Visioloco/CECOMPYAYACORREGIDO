import '/flutter_flow/flutter_flow_util.dart';
import 'completarperfil_widget.dart' show CompletarperfilWidget;
import 'package:flutter/material.dart';

class CompletarperfilModel extends FlutterFlowModel<CompletarperfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioTextController;
  String? Function(BuildContext, String?)? usuarioTextControllerValidator;
  String? _usuarioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Datos requeridos';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Datos requeridos';
    }

    return null;
  }

  // State field(s) for estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;
  String? _estadoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Datos requeridos';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    usuarioTextControllerValidator = _usuarioTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    estadoTextControllerValidator = _estadoTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usuarioFocusNode?.dispose();
    usuarioTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();
  }
}
