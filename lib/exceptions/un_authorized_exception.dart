import 'parking_exception.dart';

class UnauthorizedException extends ParkingException {
  UnauthorizedException() : super("Unauthorized access to the resource", 104);
}
