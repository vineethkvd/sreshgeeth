import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/podcast_list_model.dart';
import 'package:flutter/material.dart';

class ArtistPodcastController extends GetxController {
  var podcastListModel = const PodcastListModel().obs;
  var isLoading = true.obs;


  Future<void> fetchPodcastList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.artistPodDashboard;
    const apiToken = ApiEndPoints.apiToken;
    final artistUserId = await CacheHelper.getData('artistUserId');
    var requestData = {"api_key": apiToken, "artist_id": artistUserId};


    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print("responseData $apiUrl");

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        podcastListModel(PodcastListModel.fromJson(responseData));

        if (podcastListModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        podcastListModel(PodcastListModel.fromJson(responseData));

        if (podcastListModel.value.status == "Failed") {
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
