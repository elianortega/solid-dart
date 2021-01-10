abstract class PayableInterface {
  Future pay();
}

class CardPayment implements PayableInterface {
  @override
  Future pay() {
    //Card payment logic
  }
}

class PaypalPayment implements PayableInterface {
  @override
  Future pay() {
    //Paypal payment logic
  }
}

class AlipayPayment implements PayableInterface {
  @override
  Future pay() {
    //Alipay payment logic
  }
}
