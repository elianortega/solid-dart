import 'package:flutter/material.dart';

class PaymentStateNotifier extends ChangeNotifier {
  void pay(String paymentType) async {
    final _paymentRepository = PaymentRepository();

    if (paymentType == 'card') {
      await _paymentRepository.payWithCard();
    } else if (paymentType == 'paypal') {
      await await _paymentRepository.payWithPaypal();
    }
  }
}

class PaymentRepository {
  Future payWithCard() {
    /// pay with card logic
  }

  Future payWithPaypal() {
    /// pay with card logic
  }
}
