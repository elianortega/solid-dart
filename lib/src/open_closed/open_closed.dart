import 'package:flutter/material.dart';
import 'package:solid_examples/src/open_closed/payable_interface.dart';

class PaymentStateNotifier extends ChangeNotifier {
  /// Method that handles payment
  void payd(String paymentType) async {
    final _paymentRepository = PaymentRepository();

    if (paymentType == 'card') {
      await _paymentRepository.payWithCard();
    } else if (paymentType == 'paypal') {
      await await _paymentRepository.payWithPaypal();
    }
  }

  Future pay(PaymentType paymentType) {
    final paymentFactory = PaymentFactory();

    //Get the respective payableInterface based on the payment type
    PayableInterface payment = paymentFactory.initializePayment(paymentType);

    //Make Payment
    payment.pay();
  }
}

enum PaymentType { Card, Paypal, AliPay }

class PaymentFactory {
  const PaymentFactory();

  PayableInterface initializePayment(PaymentType paymentType) {
    //Filter by paymentType and return the correct payableInterface
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
