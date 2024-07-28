import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/profile/profile_model.dart';
import 'package:flutter/material.dart';

class ArtistProfileController extends GetxController {
  var profileModel = const ArtistProfileModel().obs;
  var isLoading = true.obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  Future<void> fetchArtistInfo() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.artistProfile;
    const apiToken = ApiEndPoints.apiToken;
    final artistUserId = await CacheHelper.getData('artistUserId');
    var requestData = {"api_key": apiToken, "artist_id": artistUserId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        profileModel(ArtistProfileModel.fromJson(responseData));

        if (profileModel.value.status == true) {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        profileModel(ArtistProfileModel.fromJson(responseData));

        if (profileModel.value.status == false) {
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
