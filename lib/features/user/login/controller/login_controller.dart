import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';
import 'package:sreshgeeth/features/user/login/view/otp_page.dart';

import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/login_model.dart';

class LoginController extends GetxController {
  var loginModel = const LoginModel().obs;
  TextEditingController phone = TextEditingController();
  TextEditingController otp = TextEditingController();
  var isLoading = false.obs;
  var passwordVisible = true.obs;

  Future<void> loginUser() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.userLogin;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken, "phone": phone.text.trim()};

    try {
      isLoading.value = true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      if (responseData["status"] == true) {
        clearFields();
        loginModel(LoginModel.fromJson(responseData));
        Fluttertoast.showToast(
            msg: 'otp has been send to your mobile number',
            backgroundColor: Colors.green);
        Get.to(
            OtpVerificationPage(
                otp: loginModel.value.otp.toString(),
                id: loginModel.value.data!.first.cusId.toString()),
            transition: Transition.cupertino);
      } else if (responseData["status"] == false) {
        Fluttertoast.showToast(
            msg: '${responseData["msg"]}', backgroundColor: Colors.red);
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading.value = false;
    }
  }

  void clearFields() {
    phone.clear();
    otp.clear();
  }
}
