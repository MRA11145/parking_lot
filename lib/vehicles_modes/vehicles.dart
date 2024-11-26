import '../payments/payments_interface.dart';
import 'vehicle_type.dart';

abstract class Vehicles implements PaymentsInterface {
  late VehicleType type;
  late String vehicleNumber;
  late String vehicleColor;
  int parkedTime = 0;
  late PaymentsInterface payment;

  Vehicles(this.type, this.vehicleNumber, this.vehicleColor, this.payment, this.parkedTime);

  VehicleType getVehicleType();
  String getVehicleNumber();
  String getVehicleColor();
  int getParkedTime();
  @override

  double calculateTotal(double hours) {
    return payment.calculateTotal(hours - parkedTime);
  }

  @override
  String toString() {
    return "Vehicle Details :- $vehicleNumber $vehicleColor $type";
  }
}
