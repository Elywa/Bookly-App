import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFail extends Failure {
  ServerFail(super.errorMessage);

  factory ServerFail.dioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFail('The connection is timed out, please try again!');
      case DioExceptionType.sendTimeout:
        return ServerFail('Send time is timed out, please try again!');
      case DioExceptionType.receiveTimeout:
        return ServerFail('receive time is timed out, please try again!');
      case DioExceptionType.badCertificate:
        return ServerFail('Bad Certificate, please try again!');
      case DioExceptionType.badResponse:
        return ServerFail.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFail('The Request is canceled, please try again!');
      case DioExceptionType.connectionError:
        return ServerFail('Connection error! , please try again!');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFail('No Internet Connection');
        }
        return ServerFail('Unexpected error! , please try later');

      default:
        return ServerFail('UnKnown error! , please try later');
    }
  }

  factory ServerFail.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFail(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFail('Your request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFail('Internal Server error! , please try later');
    } else {
      return ServerFail('Unexpected error! , please try later');
    }
  }
}
