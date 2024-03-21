import 'package:flutter/material.dart';

/// await 2.s.wait();
/// await Future.delayed(const Duration(seconds:2));
extension Wait on Duration {
  Future<void> wait() => Future.delayed(this);
}

extension FormValidation on FormState {
  bool saveAndValidate() {
    save();
    return validate();
  }
}
