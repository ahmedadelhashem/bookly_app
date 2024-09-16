import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceld');

      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}



/* import 'package:dio/dio.dart';

abstract class Failures {
  final String errMesage;

  Failures(this.errMesage);
}

class Serverfailure extends Failures {
  Serverfailure(super.errMesage);

  factory Serverfailure.fromDioError(DioException DioError) {
    switch (DioError.type) {
      case DioExceptionType.connectionTimeout:
        return Serverfailure('Connection timeout with the API server.');

      case DioExceptionType.sendTimeout:
        return Serverfailure('Send timeout with the API server.');

      case DioExceptionType.receiveTimeout:
        return Serverfailure('Receive timeout with the API server.');

      case DioExceptionType.badCertificate:
        return Serverfailure('Bad certificate with the API server.');

      case DioExceptionType.badResponse:
        return Serverfailure.fromResponse(
            DioError.response!.statusCode!, DioError.response!.data);

      case DioExceptionType.cancel:
        return Serverfailure('Request to the API server was canceled.');

      case DioExceptionType.connectionError:
        return Serverfailure('No internet connection.');

      case DioExceptionType.unknown:
       return Serverfailure('An unknown error occurred.');

       default:
    return Serverfailure('An unexpected error occurred.');
    
    }
  }
  factory Serverfailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 402) {
      return Serverfailure(response['error']['message']);
    } else if (statuscode == 404) {
      return Serverfailure('Your request not found, please try again');
    } else if (statuscode == 500) {
      return Serverfailure('Inernet server error, please try again');
    } else {
      return Serverfailure('Opps there was an error,please try again');
    }
  }
}
 */