import 'package:movies_appgain_io/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}
