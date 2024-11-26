import 'parking_exception.dart';

class SlotNotAvailableException extends ParkingException {
  SlotNotAvailableException() : super("No Available Slot", 101);
}
