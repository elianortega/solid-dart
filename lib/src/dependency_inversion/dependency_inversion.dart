abstract class DataRepositoryInterface {
  Future logInUser();

  Future signUpUser();
}

class DataRepository extends DataRepositoryInterface {
  @override
  Future logInUser() {
    //method implementation
  }

  @override
  Future signUpUser() {
    //method implementation
  }
}

class BusinessLogic {
  const BusinessLogic(this._repository);

  final DataRepositoryInterface _repository;

  Future logIn() {
    _repository.logInUser();
  }

  Future signUp() {
    _repository.signUpUser();
  }
}
