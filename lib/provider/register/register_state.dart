import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  // 5. Create a `const factory` constructor for each valid state
  const factory RegisterState.init() = _RegisterInit;
  const factory RegisterState.success( data) = _RegisterSeccess;
  const factory RegisterState.successVerified( data) = _RegisterSuccessVerified;
  const factory RegisterState.failure(String? errorText) = _RegisterFailure;
  const factory RegisterState.loading() = _RegisterLoading;

}