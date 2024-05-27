import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/fotos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tusfavoritos_model.dart';
export 'tusfavoritos_model.dart';

class TusfavoritosWidget extends StatefulWidget {
  const TusfavoritosWidget({super.key});

  @override
  State<TusfavoritosWidget> createState() => _TusfavoritosWidgetState();
}

class _TusfavoritosWidgetState extends State<TusfavoritosWidget> {
  late TusfavoritosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TusfavoritosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: const Color(0xB2FF2020),
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TUS FAVORITOS',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: StreamBuilder<List<ProductoRecord>>(
                    stream: queryProductoRecord(
                      queryBuilder: (productoRecord) => productoRecord
                          .where(
                            'GUARDAR',
                            arrayContains: currentUserReference,
                          )
                          .orderBy('FECHACREADA', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ProductoRecord> wrapProductoRecordList =
                          snapshot.data!;
                      return Wrap(
                        spacing: 2.0,
                        runSpacing: 5.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(wrapProductoRecordList.length,
                            (wrapIndex) {
                          final wrapProductoRecord =
                              wrapProductoRecordList[wrapIndex];
                          return FotosWidget(
                            key: Key(
                                'Keylgt_${wrapIndex}_of_${wrapProductoRecordList.length}'),
                            parameter2: wrapProductoRecord.nombre,
                            parameter3: wrapProductoRecord.precio.toString(),
                            parameter4: dateTimeFormat(
                              'relative',
                              wrapProductoRecord.fechacreada!,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            parameter1: wrapProductoRecord.imagenes,
                            parametro6: wrapProductoRecord.descripcion,
                            parameter5: wrapProductoRecord,
                            ciudad: wrapProductoRecord.ciudad,
                          );
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
