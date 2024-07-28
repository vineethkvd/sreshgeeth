import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';
import 'package:sreshgeeth/features/artist/navbar/view/navbar_screen.dart';
import 'package:sreshgeeth/features/user/login/view/otp_page.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/login_model.dart';

class ArtistLoginController extends GetxController {
  var loginModel = const ArtistLoginModel().obs;
  TextEditingController phone = TextEditingController();
  TextEditingController otp = TextEditingController();
  TextEditingController password = TextEditingController();
  var isLoading = false.obs;
  var passwordVisible = true.obs;

  void updateVisibility() {
    passwordVisible.toggle();
  }

  Future<void> loginArtist() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.artisLogin;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {
      "api_key": apiToken,
      "phone": phone.text.trim(),
      "password": password.text.trim()
    };

    try {
      isLoading.value = true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      if (responseData["status"] == true) {
        clearFields();
        loginModel(ArtistLoginModel.fromJson(responseData));
        Fluttertoast.showToast(
            msg: 'otp has been send to your mobile number',
            backgroundColor: Colors.green);
        CacheHelper.saveData(
            "artistUserId", loginModel.value.data!.first.artistId.toString());
        Get.offAll(
            const ArtistNavBar(),
            transition: Transition.cupertino);
      } else if (responseData["status"] == false) {
        Fluttertoast.showToast(
            msg: 'Mobile number is not registered', backgroundColor: Colors.red);
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
