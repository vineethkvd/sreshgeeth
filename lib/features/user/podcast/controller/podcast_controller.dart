import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/user_podcast_model.dart';

class UserPodcastController extends GetxController{
  var userPodcastModel = const UserPodcastModel().obs;
  var isLoading=false.obs;
  var bannerList = <Banner>[].obs;
  Future<void> fetchUserPodcast() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.podcastdashboard;
    const apiToken = ApiEndPoints.apiToken;
    final cusId = await CacheHelper.getData('userId');
    var requestData = {"api_key": apiToken, "cus_id": cusId};


    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        userPodcastModel(UserPodcastModel.fromJson(responseData));

        if (userPodcastModel.value.status == "Success") {
          bannerList.assignAll(userPodcastModel.value.banner ?? []);
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        userPodcastModel(UserPodcastModel.fromJson(responseData));

        if (userPodcastModel.value.status == "Failed") {
          if (kDebugMode) {
            print("Failed to fetch");
          }
        } else {
          throw Exception('Status is not false');
        }
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