import 'package:parking_lot/vehicles_modes/vehicle_type.dart';

import '../payments/payment_car.dart';
import 'vehicles.dart';

class Car extends Vehicles {
  
  Car(String vehicleNumber, String vehicleColor, int parkedTime)
      : super(VehicleType.car, vehicleNumber, vehicleColor, PaymentCar(), parkedTime);

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
