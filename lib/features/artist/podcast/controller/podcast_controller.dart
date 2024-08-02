import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/add_podcast_model.dart';
import '../model/init_artist_podcall_model.dart';
import '../model/podcast_category/podcast_category.dart';
import '../model/podcast_list/podcast_list_model.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

import '../model/start_podcast_model.dart';

class ArtistPodcastController extends GetxController {
  var podcastListModel = const PodcastListModel().obs;
  var isLoading = true.obs;

  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> podTitle = TextEditingController().obs;
  final Rx<TextEditingController> podCategory = TextEditingController().obs;
  final Rx<TextEditingController> podType = TextEditingController().obs;
  final Rx<TextEditingController> podDate = TextEditingController().obs;
  final Rx<TextEditingController> podTime = TextEditingController().obs;

//pick image from gallery
  var imagePath = ''.obs;
  //upload cover
  Future<File?> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (imageFile != null) {
      return File(imageFile.path);
    }
    return null;
  }

  Future<void> cropimage(
      {required String? source, required BuildContext context}) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: source.toString(),
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
        IOSUiSettings(
          title: 'Cropper',
        ),
        WebUiSettings(
          context: context,
        ),
      ],
    );
    var finalImage = croppedFile!.path;
    if (finalImage != null) {
      imagePath.value = finalImage;
    }
  }

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
      podDate.value.text = formattedDate;
    } else {
      print("failed");
    }
  }

  Future<void> openClock({required BuildContext context}) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blueAccent, // Header background color
            hintColor: Colors.deepOrange, // Selection color
            colorScheme: const ColorScheme.light(
              primary: Color(0xffe50829),
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary, // Text button color
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      print(pickedTime);
      String formattedTime =
          '${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}:00';
      print(formattedTime);
      podTime.value.text = formattedTime;
    } else {
      print("failed");
    }
  }


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

  //podcast category
  final artistPodcastCategoryModel = const ArtstPodcastCategoryModel().obs;
  var podCategoryList = [].obs;
  var podCategoryId = ''.obs;
  Future<void> fetchPodcastCategory() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.artistPodCategory;
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
        artistPodcastCategoryModel(ArtstPodcastCategoryModel.fromJson(responseData));

        if (artistPodcastCategoryModel.value.status == "Success") {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        artistPodcastCategoryModel(ArtstPodcastCategoryModel.fromJson(responseData));

        if (artistPodcastCategoryModel.value.status == "Failed") {
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


  // //schedule podcast
  final addPodcastModel = AddPodcastModel().obs;
  //podcast type
  var podTypeList = [
    {"name": 'Audio', "id": 1}
  ].obs;
  var podTypeId = ''.obs;

  Future<void> schedulePodcast() async {
    var artistId =  await CacheHelper.getData('artistUserId');
    final uri = Uri.parse( ApiEndPoints.artistBaseUrl + ApiEndPoints.scheduleNewpodcast);
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll(
      {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    );
    var splitDate = podDate.value.text.split('-');
    var year = splitDate[2];
    var month = splitDate[1];
    var day = splitDate[0];
    print("split date $splitDate");
    var splitTime = podTime.value.text.split(':');
    print("splittime $splitTime");
    var hour = splitTime[0];
    var minute = splitTime[1];
    //  // '${selectedTime?.hour ?? 0}:${selectedTime?.minute ?? 0}:00';

    request.fields["api_key"] = ApiEndPoints.apiToken;
    request.fields["artist_id"] = artistId.toString();
    request.fields["title"] = podTitle.value.text;
    request.fields["podcast_category"] = podCategoryId.value.toString();
    request.fields["podcast_date"] = '${year}/${month}/${day}';
    request.fields["podcast_time"] = '${hour}:${minute}:00';
    request.fields["podcast_type"] = podTypeId.value.toString();
    if (imagePath.value != null) {
      var profileim =
      await http.MultipartFile.fromPath("cover", imagePath.value);
      request.files.add(profileim);
      print('object' + profileim.toString());
    }

    var response = await request.send();
    var responseData = await response.stream.bytesToString();
    var decodedData = json.decode(responseData);
    addPodcastModel(AddPodcastModel.fromJson(decodedData));
    if (response.statusCode == 200) {
      if (addPodcastModel.value.status == true) {
        podTitle.value.clear();
        podCategory.value.clear();
        podCategoryId.value = '';
        podDate.value.clear();
        podTime.value.clear();
        podType.value.clear();
        podTypeId.value = '';
        imagePath.value = '';
        Fluttertoast.showToast(msg: addPodcastModel.value.msg.toString());
      } else if (addPodcastModel.value.status == false) {
        Fluttertoast.showToast(msg: addPodcastModel.value.msg.toString());
      }
    }
  }



  //start podcast
  final startArtistPodcastModel = StartArtistPodcastModel().obs;
  Future<void> startArtistPodcast({required String podcastId}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.startArtistPodcast;
    const apiToken = ApiEndPoints.apiToken;
    final artistUserId = await CacheHelper.getData('artistUserId');
    var requestData = {"api_key": apiToken, "artist_id": artistUserId,"podcast_id": podcastId};


    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);


      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        startArtistPodcastModel(StartArtistPodcastModel.fromJson(responseData));

        if (startArtistPodcastModel.value.status == true) {
          if (kDebugMode) {
            print("Success to fetch");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        startArtistPodcastModel(StartArtistPodcastModel.fromJson(responseData));

        if (startArtistPodcastModel.value.status == false) {
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


  //initialize call

  final initArtistPodCallModel = InitArtistPodCallModel().obs;
  Future<void> initializeArtistCall({required String roomId}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.artistBaseUrl + ApiEndPoints.initialCallArtist;
    var requestData = {
      "RoomId": roomId.toString(),
    };


    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);


      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        initArtistPodCallModel(InitArtistPodCallModel.fromJson(responseData));

      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        initArtistPodCallModel(InitArtistPodCallModel.fromJson(responseData));
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


  void clearFields() {
    podTitle.value.clear();
    podCategory.value.clear();
    podType.value.clear();
    podDate.value.clear();
    podTime.value.clear();
    imagePath.value = '';
    podCategoryId.value = '';
    podTypeId.value = '';
  }
}
