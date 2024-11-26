import 'parking_exception.dart';

class VehicleNotFoundException extends ParkingException {
  VehicleNotFoundException() : super("Vehicle Not Found", 103);
}
