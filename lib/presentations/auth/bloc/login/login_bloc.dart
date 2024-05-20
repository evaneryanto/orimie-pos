// ignore_for_file: depend_on_referenced_packages, unused_local_variable, prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:orimie/data/datasources/auth_remote_datasource.dart';
import 'package:orimie/data/models/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;
  LoginBloc(
    this.authRemoteDatasource,
  ) : super(_Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response =
          await authRemoteDatasource.login(event.email, event.password);
      response.fold(
          (left) => emit(_Error(left)), (right) => emit(_Success(right)));
    });
  }
}
