import 'package:dio/dio.dart';

abstract class Failure {
  final String messageError;
  const Failure(this.messageError);
}

class ServerFailure extends Failure {
  ServerFailure(super.messageFrro);

  factory ServerFailure.fromDioErro(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout');

      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate');

      case DioErrorType.badResponse:
        return ServerFailure('Bad Response');

      case DioErrorType.cancel:
        return ServerFailure('Cancel');

      case DioErrorType.connectionError:
        return ServerFailure('Connection Error');

      case DioErrorType.unknown:
        if (e.message?.contains('SocketException') ?? false) {
          return ServerFailure('No Interent Connections');
        }
        return ServerFailure('Somthing Error, try again!');

      default:
        return ServerFailure('Somthing Error, try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // return parse :
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found');
    } else if (statusCode == 500) {
      return ServerFailure('some of problem in server');
    } else {
      return ServerFailure('Opps, Somthing error');
    }
  }
}
