import 'package:parking_lot/parkingLot/parking_lot.dart';

import 'operations/operational_result.dart';
import 'vehicles_modes/bike.dart';
import 'vehicles_modes/car.dart';
import 'vehicles_modes/handicapped_vh.dart';

int main() {

  ParkingLot parkingLot = ParkingLot(2, 2, 2);
  Car car = Car("1234", "Red", DateTime.now().millisecondsSinceEpoch);
  HandicappedVh handicappedVh = HandicappedVh("1235", "Blue", DateTime.now().millisecondsSinceEpoch);
  parkingLot.park(car, 0, 0, 0);
  parkingLot.park(handicappedVh, 0, 0, 1);

  Car car2 = Car("1236", "Green", DateTime.now().millisecondsSinceEpoch);
  parkingLot.park(car2, 0, 1, 0);
  Car car3 = Car("1237", "Yellow", DateTime.now().millisecondsSinceEpoch);
  parkingLot.park(car3, 0, 1, 1);
  Bike bike = Bike("1238", "Black", DateTime.now().millisecondsSinceEpoch);
  parkingLot.park(bike, 1, 0, 0);

  OperationalResult<double> fee = parkingLot.calculateFee(car);
  print("fee: ${fee.result}");
  OperationalResult<bool> leave = parkingLot.leave(car);
  OperationalResult<bool> leave2 = parkingLot.leave(car);

  if (leave.isSuccess()) {
    print("leave: ${leave.result}");
  } else {
    print("leave: ${leave.exception}");
  }
  if (leave2.isSuccess()) {
    print("leave2: ${leave2.result}");
  } else {
    print("leave2: ${leave2.exception}");
  }
  
  return 0;
}
