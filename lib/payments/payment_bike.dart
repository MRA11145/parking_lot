import 'payments_interface.dart';

class PaymentBike implements PaymentsInterface {
  @override
  double calculateTotal(double amount) {
    return amount * 1;
  }
}
