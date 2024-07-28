import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/about_us.dart';
import '../model/privacy_policy.dart';

import '../model/suppot.dart';
import '../model/terms.dart';

class CompanyInfoController extends GetxController {
  var aboutUsModel = AboutUsModel().obs;
  var isLoading = true.obs;
  Future<void> fetchAboutUs() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURLTrash + ApiEndPoints.userAboutUs;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        aboutUsModel(AboutUsModel.fromJson(responseData));
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        aboutUsModel(AboutUsModel.fromJson(responseData));
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading(false);
    }
  }

  var supportModel = SupportModel().obs;
  Future<void> fetchSupport() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURLTrash + ApiEndPoints.userSupport;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        supportModel(SupportModel.fromJson(responseData));
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        supportModel(SupportModel.fromJson(responseData));
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading(false);
    }
  }

  var termsModel = TermsModel().obs;
  Future<void> fetchTerms() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURLTrash + ApiEndPoints.userTerm;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        termsModel(TermsModel.fromJson(responseData));
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        termsModel(TermsModel.fromJson(responseData));
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading(false);
    }
  }

  var privacyModel = PrivacyModel().obs;
  Future<void> fetchPolicy() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURLTrash + ApiEndPoints.userPrivacyPolicy;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        privacyModel(PrivacyModel.fromJson(responseData));
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        privacyModel(PrivacyModel.fromJson(responseData));
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading(false);
    }
  }
}
