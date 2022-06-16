import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:simple_quick/domain/auth/auth_failure.dart';
import 'package:simple_quick/domain/auth/auth_value_objects.dart';
import 'package:simple_quick/domain/auth/i_auth_facade.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          passWord: PassWord(e.passWord),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailandPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
    );
  }
}

Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
  Future<Either<AuthFailure, Unit>> Function({
    required EmailAddress emailAddress,
    required PassWord passWord,
  })
      forwardedCall,
) async* {
  Either<AuthFailure, Unit>? failureOrSuccess;
  // ignore: prefer_typing_uninitialized_variables
  var state;
  final isEmailValid = state.emailAddress.isValid();
  final isPasswordValid = state.emailAddress.isValid();

  if (isEmailValid && isPasswordValid) {
    yield* state.copyWith(
      authFailureOrSuccessOption: none(),
      isSubmitting: true,
    );
    failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress, passWord: state.passWord);
  }
  yield* state.copyWith(
      isSubmitting: false,
      showErrorMassages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess!));
}
