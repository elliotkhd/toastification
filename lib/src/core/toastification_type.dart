import 'package:flutter/material.dart';
import 'package:toastification/src/core/constants_values.dart';

class ToastificationType {
  final String name;
  final Color color;
  const ToastificationType._(this.name, this.color);

  // Built-in types
  static const info = ToastificationType._('info', infoColor);
  static const success = ToastificationType._('success', successColor);
  static const warning = ToastificationType._('warning', warningColor);
  static const error = ToastificationType._('error', errorColor);

  // Factory for custom types
  static ToastificationType custom(String name, Color color, IconData icon) {
    return ToastificationType._(name, color);
  }

  static List<ToastificationType> get defaultValues =>
      [info, success, warning, error];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToastificationType &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'ToastificationType.$name';
  }
}
