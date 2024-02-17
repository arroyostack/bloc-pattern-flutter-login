import 'dart:async';
import './validators.dart';

class Bloc with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Add data to stream.
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // Dispose Sink. It's a good practice to close the stream when it's not in use.
  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
