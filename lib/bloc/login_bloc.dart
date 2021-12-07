import 'package:async/async.dart';
import 'package:rxdart/rxdart.dart';

//TODO : Creating login bloc and hooking it up with the Ui using Provider.

class LoginBloc{

  final _loginEmail = BehaviorSubject<String>();
  final _loginPass = BehaviorSubject<String>();


  //Getter
   Stream<String> get loginEmail => _loginEmail.stream;
   Stream<String> get loginPass => _loginPass.stream;

  //Setter
    Function(String) get changeloginEmail => _loginEmail.sink.add;
    Function(String) get changeloginPass => _loginPass.sink.add;

  //dispose
   void dispose(){
     _loginEmail.close();
     _loginPass.close();
}

}