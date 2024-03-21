import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

abstract final class Print {
  const Print._();

  static void log(Object? message, [String? service, StackTrace? stackTrace]) {
    if (kDebugMode) {
      developer.log('$message', name: service ?? 'log', stackTrace: stackTrace);
    }
  }

  static void info(Object? message, [String? service, StackTrace? trace]) {
    log('\u001b[32m 🍀 $message', service ?? 'info', trace);
  }

  static void warning(Object? message, [String? service, StackTrace? trace]) {
    log('\u001B[34m 🔥 $message', service ?? 'warning', trace);
  }

  static void error(Object? message, [String? service, StackTrace? trace]) {
    log('\u001b[31m 💀 $message', service ?? 'error', trace);
  }

  static void json(Object? message, [String? service, StackTrace? trace]) {
    final data = JsonEncoder.withIndent(' ' * 2).convert(message);
    log(data, service ?? 'json', trace);
  }
}
