import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/album_list/album_list.dart';
import '../model/gener_list/gener_list.dart';
import '../model/language/language_model.dart';
import '../model/production_year.dart';
import '../model/track_list/track_list.dart';
import '../model/upload_song.dart';

class UploadSongController extends GetxController {
  var isLoading = true.obs;

  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> curAlbumTitle = TextEditingController().obs;
  var curAlbumId = ''.obs;
  final Rx<TextEditingController> curTrack = TextEditingController().obs;
  var curTrackId = ''.obs;
  final Rx<TextEditingController> curInstrument = TextEditingController().obs;
  var curInstrumentId = ''.obs;
  final Rx<TextEditingController> title = TextEditingController().obs;
  final Rx<TextEditingController> primaryArtist = TextEditingController().obs;
  final Rx<TextEditingController> featuring = TextEditingController().obs;
  final Rx<TextEditingController> lyricist = TextEditingController().obs;
  final Rx<TextEditingController> composition = TextEditingController().obs;
  final Rx<TextEditingController> music = TextEditingController().obs;
  final Rx<TextEditingController> curProYear = TextEditingController().obs;
  var curProId = ''.obs;
  final Rx<TextEditingController> isrc = TextEditingController().obs;
  final Rx<TextEditingController> curGener = TextEditingController().obs;
  var curGenerId = ''.obs;
  final Rx<TextEditingController> labelName = TextEditingController().obs;
  final Rx<TextEditingController> date = TextEditingController().obs;
  final Rx<TextEditingController> curAdvisory = TextEditingController().obs;
  var curAdvisoryId = ''.obs;
  final Rx<TextEditingController> curLang = TextEditingController().obs;
  var curLangId = ''.obs;

  var albumListModel = const AlbumListModel().obs;
  Future<void> fetchAlbumList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.albumList;
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
        albumListModel(AlbumListModel.fromJson(responseData));

        if (albumListModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        albumListModel(AlbumListModel.fromJson(responseData));

        if (albumListModel.value.status == "Failed") {
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

  var trackListModel = const TrackListModel().obs;
  Future<void> fetchTrackList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.trackList;
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
        trackListModel(TrackListModel.fromJson(responseData));

        if (trackListModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        trackListModel(TrackListModel.fromJson(responseData));

        if (trackListModel.value.status == "Failed") {
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

  var instrumentalType = [
    {'name': 'Yes', 'value': 'value1'},
    {'name': 'No', 'value': 'value2'},
  ];
  var productionYears = <ProductionYearModel>[].obs;
  Future<void> addProductionYear() async {
    for (int i = 1950; i <= 2023; i++) {
      productionYears
          .add(ProductionYearModel(name: '$i', value: '${i - 1995}'));
    }
  }
  //gener

  var generListModel = const GenerListModel().obs;
  Future<void> fetchGenerList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.genrelist;
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
        print("gener $responseData");
        generListModel(GenerListModel.fromJson(responseData));

        if (generListModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        generListModel(GenerListModel.fromJson(responseData));

        if (generListModel.value.status == "Failed") {
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
  var languageModel = const LanguageModel().obs;
  Future<void> fetchLanguageList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.language;
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
        print("gener $responseData");
        languageModel(LanguageModel.fromJson(responseData));

        if (languageModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        languageModel(LanguageModel.fromJson(responseData));

        if (languageModel.value.status == "Failed") {
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

  //production year
  Future<void> openCalendar({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            bannerTheme:
                const MaterialBannerThemeData(backgroundColor: Colors.cyan),
            primaryColor: Colors.deepOrange, // Header background color
            hintColor: Colors.deepOrange, // Selection color
            colorScheme: const ColorScheme.light(
                primary: Color(0xffe50829),
                onBackground: Color(0xffe50829),
                onPrimary: Colors.white),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary, // Text button color
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      print(formattedDate);
      date.value.text = formattedDate;
    } else {
      print("failed");
    }
  }

  var uploadSongModel =  UploadSongModel().obs;
  Future<void> uploadSongs() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.uploadSong;
    const apiToken = ApiEndPoints.apiToken;
    final artistUserId = await CacheHelper.getData('artistUserId');
    var requestData = {
      "api_key": apiToken,
      "artist_id": artistUserId,
      "album_id": curAlbumId,
      "track_type":curTrack,
      "instrumental_type": curInstrument,
      "title": title.value.text.trim(),
      "primary_artist":  primaryArtist.value.text.trim(),
      "featuring":  featuring.value.text.trim(),
      "lyricist":  lyricist.value.text.trim(),
      "composition":  composition.value.text.trim(),
      "music": music.value.text.trim(),
      "production_year": curProYear.value.text.trim(),
      "isrc_code":  isrc.value.text.trim(),
      "genere": curGenerId,
      "parental_advisory": curAdvisory,
      "lyrics_language": curLangId,
      "label_name" : labelName.value.text.trim(),
      "date_of_production": date.value.text.trim(),

    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("gener $responseData");
        uploadSongModel(UploadSongModel.fromJson(responseData));

        if (uploadSongModel.value.status == true) {
          if (kDebugMode) {
            print("Success to fetch");
          }
        }  if (uploadSongModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch");
          }
        }else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        uploadSongModel(UploadSongModel.fromJson(responseData));

        if (uploadSongModel.value.status == false) {
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
var advisory=[
  {'name': 'Yes', 'value': 'value1'},
  {'name': 'No', 'value': 'value2'},
];
  void clearFields() {
    curAlbumTitle.value.clear();
    curTrack.value.clear();
    curInstrument.value.clear();
    title.value.clear();
    primaryArtist.value.clear();
    featuring.value.clear();
    lyricist.value.clear();
    composition.value.clear();
    music.value.clear();
    curProYear.value.clear();
    isrc.value.clear();
    curGener.value.clear();
    labelName.value.clear();
    date.value.clear();

    // Reset all observable variables
    curAlbumId.value = '';
    curTrackId.value = '';
    curInstrumentId.value = '';
    curProId.value = '';
    curGenerId.value = '';
  }
}
