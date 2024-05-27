import '/flutter_flow/flutter_flow_util.dart';
import 'selecionarfoto_widget.dart' show SelecionarfotoWidget;
import 'package:flutter/material.dart';

class SelecionarfotoModel extends FlutterFlowModel<SelecionarfotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
