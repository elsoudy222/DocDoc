import 'package:doc_doc/features/login/data/models/login_response.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  /// ================================================================= ///
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  /// ================================================================= ///

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse){
        emit(const LoginState.success(LoginResponse));
      },
      failure: (error){
        emit(LoginState.error(message: error.apiErrorModel.message ?? ""));

      },
    );
  }
}
