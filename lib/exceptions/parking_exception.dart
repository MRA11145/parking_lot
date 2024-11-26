class ParkingException implements Exception {
  final String message;
  final int? code;

  ParkingException(this.message, this.code);

  @override
  String toString() {
    if (code != null) {
      return 'ParkingException: ${code ?? ''} $message';
    }
    return message;
  }
}
