import 'parking_exception.dart';

class VehicleAlreadyParkedException extends ParkingException {
  VehicleAlreadyParkedException() : super("Vehicle Already Parked", 102);
}
