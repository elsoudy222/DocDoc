import 'package:doc_doc/core/network/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part  'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSuccess(T data) = SignupSuccess;
  const factory SignupState.signupError({required String message}) = SignupError;
}
