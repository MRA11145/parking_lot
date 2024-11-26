import '../exceptions/parking_exception.dart';

class OperationalResult<T> {
  final T? result;
  final ParkingException? exception;

  OperationalResult.success(this.result) : exception = null;
  OperationalResult.failure(this.exception) : result = null;

  bool isSuccess() {
    return exception == null;
  }
}

