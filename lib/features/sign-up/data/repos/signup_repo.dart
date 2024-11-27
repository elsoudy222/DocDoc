import 'package:doc_doc/core/network/api_service.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../models/signup_request_body.dart';
import '../models/signup_response.dart';



class SignUpRepo {

  final ApiService _apiService;
  SignUpRepo(this._apiService);


  Future<ApiResult<SignupResponse>> signup(SignUpRequestBody signupRequestBody)async{
    try{
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}