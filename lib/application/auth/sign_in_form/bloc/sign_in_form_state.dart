part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required PassWord passWord,
    required bool showErrorMassages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;
  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        passWord: PassWord(''),
        showErrorMassages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
