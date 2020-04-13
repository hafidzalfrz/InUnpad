import 'package:flutter/material.dart';

class Result {
  final ResultType resultType;
  final String message;
  final int statusCode;

  Result(this.resultType, this.message, {this.statusCode});

  IconData get iconData {
    switch (resultType) {
      case ResultType.Success:
        return Icons.check;
      case ResultType.Warning:
        return Icons.warning;
      case ResultType.Error:
        return Icons.error_outline;
      default:
        return Icons.info_outline;
    }
  }
}

enum ResultType { Success, Warning, Error }
