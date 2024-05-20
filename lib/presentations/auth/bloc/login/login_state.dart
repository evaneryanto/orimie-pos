part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.succes(AuthResponseModel authResponseModel) =
      _Success;
  const factory LoginState.error(String message) = _Error;
}
