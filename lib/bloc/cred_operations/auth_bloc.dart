import 'package:async/async.dart';
import 'package:ebusinesscards/mixins/validation_mixin.dart';
import 'package:rxdart/rxdart.dart';

//TODO : Creating login bloc and hooking it up with the Ui using Provider.

class AuthBloc with ValidationMixin{

  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _errorMessage = BehaviorSubject<String>();


  //Getters
  Stream<String> get email => _email.stream.transform(validatorEmail);
  Stream<String> get password => _password.stream.transform(validatorPassword);
  Stream<String> get errorMessage => _errorMessage.stream;


   //Setters
    Function(String) get changeEmail{
      addError("Email is incorrect");
      return _email.sink.add;
    }

    Function(String) get changePassword{

      addError("Password is incorrect");
      return _password.sink.add;
    }

    Function(String) get addError => _errorMessage.sink.add;


    //Creating the validity form to check whether the input is correct or not.
    Stream<bool> get submitValidForm => Rx.combineLatest3(
        email,
        password,
        errorMessage,
            (e, p, r) => true);


  //dispose
   void dispose(){
     _email.close();
     _password.close();
     _errorMessage.close();
}

}