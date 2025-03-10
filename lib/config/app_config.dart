import 'package:flutter/material.dart';

class App {
  late BuildContext _context;
  double _height = 0.0;
  double _width = 0.0;
  double _heightPadding = 0.0;
  double _widthPadding = 0.0;

  App(_context) {
    this._context = _context;
    MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height -
        ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }
}

class Colors {
  final Color _mainColor = const Color(0xFF478DF4);
  final Color _mainDarkColor = const Color(0xFF478DF4);
  final Color _secondColor = const Color(0xFF704949);
  final Color _secondDarkColor = const Color(0xFF704949);
  final Color _backgroundColor = const Color(0xFFFFFFFF);
  final Color _backgroundDarkColor = const Color(0xFF2c2c2c);

  Color mainColor(double opacity) {
    return _mainColor.withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return _secondColor.withOpacity(opacity);
  }

  Color backgroundColor(double opacity) {
    return _backgroundColor.withOpacity(opacity);
  }

  Color mainDarkColor(double opacity) {
    return _mainDarkColor.withOpacity(opacity);
  }

  Color secondDarkColor(double opacity) {
    return _secondDarkColor.withOpacity(opacity);
  }

  Color backgroundDarkColor(double opacity) {
    return _backgroundDarkColor.withOpacity(opacity);
  }
}
