import 'package:parking_lot/operations/operational_result.dart';

import '../exceptions/slot_not_available.dart';
import '../exceptions/vehicle_already_parked.dart';
import '../exceptions/vehicle_not_found.dart';
import '../vehicles_modes/vehicle_type.dart';
import '../vehicles_modes/vehicles.dart';

class ParkingLot {
  List<List<List<Vehicles?>>> spots = [];
  final int floors;
  final int rows;
  final int spotsPerFloor;

  ParkingLot(this.floors, this.rows, this.spotsPerFloor) {
    for (int i = 0; i < floors; i++) {
      spots.add([]);
      for (int j = 0; j < rows; j++) {
        spots[i].add([]);
        for (int k = 0; k < spotsPerFloor; k++) {
          spots[i][j].add(null);
        }
      }
    }
  }

  OperationalResult<bool> park(Vehicles vehicle, int floor, int row, int spot) {
    if (floor < 0 || floor >= floors || row < 0 || row >= rows || spot < 0 || spot >= spotsPerFloor) {
      return OperationalResult.failure(SlotNotAvailableException());
    }
    if (spots[floor][row][spot] != null) {
      return OperationalResult.failure(VehicleAlreadyParkedException());
    }
    spots[floor][row][spot] = vehicle;
    print("Parked vehicle ${vehicle.toString()} at floor $floor, row $row, spot $spot");
    return OperationalResult.success(true);
  }

  OperationalResult<bool> leave(Vehicles vehicle) {
    for (int i = 0; i < floors; i++) {
      for (int j = 0; j < rows; j++) {
        for (int k = 0; k < spotsPerFloor; k++) {
          if (spots[i][j][k] == vehicle) {
            spots[i][j][k] = null;
            print("Left vehicle ${vehicle.toString()} from floor $i, row $j, spot $k");
            return OperationalResult.success(true);
          }
        }
      }
    }
    return OperationalResult.failure(VehicleNotFoundException());
  }

  OperationalResult<int> getAvailableSlots(int floor) {
    int count = 0;
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < spotsPerFloor; j++) {
        if (spots[floor][i][j] == null) {
          count++;
        }
      }
    }
    return OperationalResult.success(count);
  }

  OperationalResult<int> handicappedSlots(int floor) {
    int count = 0;
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < spotsPerFloor; j++) {
        if (spots[floor][i][j] != null && spots[floor][i][j]!.type == VehicleType.handicappedVehicle) {
          count++;
        }
      }
    }
    return OperationalResult.success(count);
  }

  OperationalResult<double> calculateFee(Vehicles vehicle) {
    double fee = 0;
    fee = vehicle.calculateTotal(DateTime.now().millisecondsSinceEpoch.toDouble());
    return OperationalResult.success(fee);
  }
}
