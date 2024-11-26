import 'package:parking_lot/vehicles_modes/vehicle_type.dart';

import '../payments/payment_bike.dart';
import 'vehicles.dart';

class Bike extends Vehicles {
  Bike(String vehicleNumber, String vehicleColor, int parkedTime)
      : super(VehicleType.motorcycle, vehicleNumber, vehicleColor, PaymentBike(), parkedTime);

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
