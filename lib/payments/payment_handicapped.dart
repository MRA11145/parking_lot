import 'payments_interface.dart';

class PaymentHandicapped implements PaymentsInterface {
  @override
  double calculateTotal(double amount) {
    return amount * 0.5;
  }
}
