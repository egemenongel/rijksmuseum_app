extension Hardcoded on String {
  String get hardCoded => this;
}

extension ConvertExtension on String {
  String get capitalize => split(' ').map((e) => e.capitalizeFirst).join(' ');

  String get capitalizeFirst {
    if (this == '') return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
