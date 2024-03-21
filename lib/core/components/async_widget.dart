import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'custom_error_widget.dart';
import 'loading_widget.dart';

class AsyncWidget<T> extends StatelessWidget {
  const AsyncWidget(
      {required this.asyncData,
      required this.builder,
      this.loading,
      this.error,
      super.key});

  final AsyncValue<T> asyncData;
  final Widget Function(T data) builder;
  final Widget? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;

  @override
  Widget build(BuildContext context) {
    return asyncData.when(
      skipLoadingOnReload: true,
      data: builder,
      error: error ??
          (err, trace) {
            log('$trace');
            return CustomErrorWidget(
              error: err.toString(),
            );
          },
      loading: () => loading ?? const LoadingWidget(),
    );
  }
}
