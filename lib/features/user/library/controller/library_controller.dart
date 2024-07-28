import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/library/library_model.dart';
import '../model/podcast/podcast_model.dart';

class LibraryController extends GetxController {
  var musicLibraryModel = const MusicLibraryModel().obs;
  var isLoading = false.obs;
  Future<void> fetchMusicLibrary() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.musiclibrary;
    const apiToken = ApiEndPoints.apiToken;
    final cusId = await CacheHelper.getData('userId');
    var requestData = {"api_key": apiToken, "cus_id": int.parse(cusId.toString())};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        musicLibraryModel(MusicLibraryModel.fromJson(responseData));

        if (musicLibraryModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        musicLibraryModel(MusicLibraryModel.fromJson(responseData));

        if (musicLibraryModel.value.status == "Failed") {
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

  var podcastLibraryModel = const PodcastLibraryModel().obs;
  Future<void> fetchPodcastLibrary() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.podcastlibrary;
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
        podcastLibraryModel(PodcastLibraryModel.fromJson(responseData));

        if (podcastLibraryModel.value.status == "Success") {
          print("${podcastLibraryModel.value.downlaodList}");
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        podcastLibraryModel(PodcastLibraryModel.fromJson(responseData));

        if (podcastLibraryModel.value.status == "Failed") {
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
