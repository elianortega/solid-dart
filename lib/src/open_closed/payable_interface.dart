abstract class PayableInterface {
  Future pay();
}

class CardPayment implements PayableInterface {
  @override
  Future pay() {
    //Card payment logic
  }
}
