import '../payments/payment_handicapped.dart';
import 'vehicle_type.dart';
import 'vehicles.dart';

class HandicappedVh extends Vehicles {
  HandicappedVh(String vehicleNumber, String vehicleColor, int parkedTime) : super(VehicleType.handicappedVehicle, vehicleNumber, vehicleColor, PaymentHandicapped(), parkedTime);

  @override
  int getParkedTime() {
    return parkedTime;
  }

  @override
  String getVehicleColor() {
    return vehicleColor;
  }

  @override
  String getVehicleNumber() {
    return vehicleNumber;
  }

  @override
  VehicleType getVehicleType() {
    return type;
  }
}
