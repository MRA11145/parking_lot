import 'payments_interface.dart';

class PaymentCar implements PaymentsInterface {
  @override
  double calculateTotal(double amount) {
    return amount * 2;
  }
}
