import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/dashboard_model.dart';

class DashboardController extends GetxController {
  var dashboardModel = const DashboardModel().obs;
  var bannerList = <Banner>[].obs;
  var isLoading=false.obs;
  var adsBannerList = <Banner>[].obs;
  Future<void> fetchDashBoardData() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.dashboard;
    const apiToken = ApiEndPoints.apiToken;
    final cusId = await CacheHelper.getData('userId');
    var requestData = {"api_key": apiToken, "cus_id":cusId};

    try {
      isLoading.value=true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      if (response.statusCode == 200) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        dashboardModel(DashboardModel.fromJson(responseData));

        if (dashboardModel.value.status == "Success") {
          bannerList.assignAll(dashboardModel.value.banner ?? []);
          adsBannerList.assignAll(dashboardModel.value.banner ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        dashboardModel(DashboardModel.fromJson(responseData));

        if (dashboardModel.value.status == "Failed") {
          if (kDebugMode) {
            print("Failed to fetch");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading.value=false;
    }
  }
}
