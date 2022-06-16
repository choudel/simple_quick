import 'package:injectable/injectable.dart';
import 'package:simple_quick/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

@module
abstract class DatabaseInjectableModule {
  @lazySingleton
  RegisterWithEmailAndPasswordPressed get registerWithEmailandPassword =>
      const RegisterWithEmailAndPasswordPressed();
}
