import '../extensions/extensions.dart';

sealed class AppException implements Exception {
  AppException(this.code, this.message);
  final String code;
  final String message;

  @override
  String toString() => message;
}

class HomeItemsException extends AppException {
  HomeItemsException()
      : super('home-fetch-failure', 'Could not fetch the data'.hardCoded);
}

class DetailsException extends AppException {
  DetailsException()
      : super('details-fetch-failure', 'Could not fetch the details'.hardCoded);
}

class InternetException extends AppException {
  InternetException()
      : super('connection-error', 'No Internet Connection'.hardCoded);
}
