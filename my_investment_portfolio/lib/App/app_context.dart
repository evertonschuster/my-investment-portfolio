import 'package:flutter/material.dart';

class AppContext {
  static BuildContext? _buildContext;

  static BuildContext get context {
    return _buildContext!;
  }

  static set context(BuildContext context) {
    _buildContext = context;
  }
}
