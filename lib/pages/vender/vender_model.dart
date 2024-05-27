import '/flutter_flow/flutter_flow_util.dart';
import 'vender_widget.dart' show VenderWidget;
import 'package:flutter/material.dart';

class VenderModel extends FlutterFlowModel<VenderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode1;
  TextEditingController? textFielddescripcionTextController1;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController1Validator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode2;
  TextEditingController? textFielddescripcionTextController2;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController2Validator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode3;
  TextEditingController? textFielddescripcionTextController3;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController3Validator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode4;
  TextEditingController? textFielddescripcionTextController4;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController4Validator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode5;
  TextEditingController? textFielddescripcionTextController5;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFielddescripcionFocusNode1?.dispose();
    textFielddescripcionTextController1?.dispose();

    textFielddescripcionFocusNode2?.dispose();
    textFielddescripcionTextController2?.dispose();

    textFielddescripcionFocusNode3?.dispose();
    textFielddescripcionTextController3?.dispose();

    textFielddescripcionFocusNode4?.dispose();
    textFielddescripcionTextController4?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    textFielddescripcionFocusNode5?.dispose();
    textFielddescripcionTextController5?.dispose();
  }
}
