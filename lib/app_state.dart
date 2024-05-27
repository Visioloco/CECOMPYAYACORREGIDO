import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _selecionarfoto = [];
  List<String> get selecionarfoto => _selecionarfoto;
  set selecionarfoto(List<String> value) {
    _selecionarfoto = value;
  }

  void addToSelecionarfoto(String value) {
    _selecionarfoto.add(value);
  }

  void removeFromSelecionarfoto(String value) {
    _selecionarfoto.remove(value);
  }

  void removeAtIndexFromSelecionarfoto(int index) {
    _selecionarfoto.removeAt(index);
  }

  void updateSelecionarfotoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selecionarfoto[index] = updateFn(_selecionarfoto[index]);
  }

  void insertAtIndexInSelecionarfoto(int index, String value) {
    _selecionarfoto.insert(index, value);
  }

  bool _noche = false;
  bool get noche => _noche;
  set noche(bool value) {
    _noche = value;
  }

  bool _favorito = false;
  bool get favorito => _favorito;
  set favorito(bool value) {
    _favorito = value;
  }

  int _anuncios = 0;
  int get anuncios => _anuncios;
  set anuncios(int value) {
    _anuncios = value;
  }

  bool _buscando = false;
  bool get buscando => _buscando;
  set buscando(bool value) {
    _buscando = value;
  }

  double _MONTO = 2000.0;
  double get MONTO => _MONTO;
  set MONTO(double value) {
    _MONTO = value;
  }

  int _mescartao = 0;
  int get mescartao => _mescartao;
  set mescartao(int value) {
    _mescartao = value;
  }

  int _anocartado = 0;
  int get anocartado => _anocartado;
  set anocartado(int value) {
    _anocartado = value;
  }

  int _SIGUIENTE = 0;
  int get SIGUIENTE => _SIGUIENTE;
  set SIGUIENTE(int value) {
    _SIGUIENTE = value;
  }
}
