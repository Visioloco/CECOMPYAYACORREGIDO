import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CrearPagoCall {
  static Future<ApiCallResponse> call({
    String? idempotency = '',
    double? transactionAmount,
    String? token = '',
    int? installments,
    String? email = '',
    String? firstName = '',
    String? statementDescriptor = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": $transactionAmount,
  "token": "$token",
  "installments": $installments,
  "payer": {
    "email": "$email",
    "first_name": "$firstName"
  },
  "statement_descriptor": "$statementDescriptor"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
        'X-Idempotency-Key': '$idempotency',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static int? idpago(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? fechacreacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_created''',
      ));
  static String? fechaaprovacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_approved''',
      ));
  static String? fechaactualizacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_last_updated''',
      ));
  static String? tipooperacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method_id''',
      ));
  static String? tipopago(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_type_id''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? omeda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency_id''',
      ));
  static String? descripcion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
