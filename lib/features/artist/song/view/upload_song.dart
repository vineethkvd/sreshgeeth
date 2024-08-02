import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:readmore/readmore.dart';
import 'package:sreshgeeth/features/artist/podcast/model/podcast_list/podcast_list_model.dart';
import 'package:sreshgeeth/features/artist/podcast/view/completed.dart';
import 'package:sreshgeeth/features/artist/podcast/view/upcoming.dart';
import 'package:sreshgeeth/features/artist/song/controller/uploadsong_controller.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../podcast/controller/podcast_controller.dart';

class UploadSongsPage extends StatefulWidget {
  const UploadSongsPage({super.key});

  @override
  State<UploadSongsPage> createState() => _UploadSongsPageState();
}

class _UploadSongsPageState extends State<UploadSongsPage> {
  final UploadSongController uploadSongController =
      Get.put(UploadSongController());
  @override
  void initState() {
    super.initState();
    uploadSongController.fetchAlbumList();
    uploadSongController.fetchTrackList();
    uploadSongController.addProductionYear();
    uploadSongController.fetchGenerList();
    uploadSongController.fetchLanguageList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                )),
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Upload Song",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.whiteColor,
                  fontFamily: "poppinsSemiBold"),
            ),
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      Text(
                        "Upload song",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppinsSemiBold",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () {
                          if (uploadSongController
                                      .albumListModel.value.albumList ==
                                  null ||
                              uploadSongController
                                  .albumListModel.value.albumList!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No albums available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                                  Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Album List",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController
                                  .albumListModel.value.albumList!
                                  .map((data) => data.albumName)
                                  .where((title) => title != null)
                                  .toList()
                                  .cast<String>(),
                              selectedItem: uploadSongController
                                      .curAlbumTitle.value.text.isEmpty
                                  ? null
                                  : uploadSongController
                                      .curAlbumTitle.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ?? "Select album list",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .albumListModel.value.albumList!
                                    .firstWhere(
                                        (data) => data.albumName == val);
                                uploadSongController.curAlbumTitle.value.text =
                                    selectedData.albumName!;
                                uploadSongController.curAlbumId.value =
                                    selectedData.albumId!.toString();
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search album title',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () {
                          if (uploadSongController
                                      .trackListModel.value.trackList ==
                                  null ||
                              uploadSongController
                                  .trackListModel.value.trackList!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No track available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                                  Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Track List",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController
                                  .trackListModel.value.trackList!
                                  .map((data) => data.trackTitle)
                                  .where((title) => title != null)
                                  .toList()
                                  .cast<String>(),
                              selectedItem: uploadSongController
                                      .curTrack.value.text.isEmpty
                                  ? null
                                  : uploadSongController.curTrack.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ?? "Select track",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .trackListModel.value.trackList!
                                    .firstWhere(
                                        (data) => data.trackTitle == val);
                                uploadSongController.curTrack.value.text =
                                    selectedData.trackTitle!;
                                uploadSongController.curTrackId.value =
                                    selectedData.trackId!.toString();
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search track title',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () {
                          if (uploadSongController.instrumentalType == null ||
                              uploadSongController.instrumentalType!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No instrumental type available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                                  Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Instrumental type",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController.instrumentalType!
                                  .map((data) => data['name']!)
                                  .toList(),
                              selectedItem: uploadSongController
                                      .curInstrument.value.text.isEmpty
                                  ? null
                                  : uploadSongController
                                      .curInstrument.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ??
                                          "Select instrumental type",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .instrumentalType!
                                    .firstWhere((data) => data['name'] == val);
                                uploadSongController.curInstrument.value.text =
                                    selectedData['name']!;
                                uploadSongController.curInstrumentId.value =
                                    selectedData['value']!;
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search instrumental type',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Title",
                          hintTxt: "Enter title",
                          controller: uploadSongController.title.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Primary artist",
                          hintTxt: "Enter primary artist",
                          controller: uploadSongController.primaryArtist.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Featuring",
                          hintTxt: "Enter featuring",
                          controller: uploadSongController.featuring.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Lyricist",
                          hintTxt: "Enter lyricist",
                          controller: uploadSongController.lyricist.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Composition",
                          hintTxt: "Enter composition",
                          controller: uploadSongController.composition.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "Music",
                          hintTxt: "Enter music",
                          controller: uploadSongController.music.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () {
                          if (uploadSongController.productionYears.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No production years available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                                  Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Production Year",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController.productionYears
                                  .map((data) => data.name)
                                  .where((name) => name != null)
                                  .cast<String>()
                                  .toList(),
                              selectedItem: uploadSongController
                                      .curProYear.value.text.isEmpty
                                  ? null
                                  : uploadSongController.curProYear.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ?? "Select production year",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .productionYears
                                    .firstWhere((data) => data.name == val);
                                uploadSongController.curProYear.value.text =
                                    selectedData.name!;
                                uploadSongController.curProId.value =
                                    selectedData.value!;
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search production year',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => _customTextField(
                          labelTxt: "ISRC Code",
                          hintTxt: "Enter ISRC Code",
                          controller: uploadSongController.isrc.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                            () {
                          if (uploadSongController
                              .generListModel.value.genersList ==
                              null ||
                              uploadSongController
                                  .generListModel.value.genersList!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No gener available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                              Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Gener List",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController
                                  .generListModel.value.genersList!
                                  .map((data) => data.genersName)
                                  .where((title) => title != null)
                                  .toList()
                                  .cast<String>(),
                              selectedItem: uploadSongController
                                  .curGener.value.text.isEmpty
                                  ? null
                                  : uploadSongController
                                  .curGener.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ?? "Select gener",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .generListModel.value.genersList!
                                    .firstWhere(
                                        (data) => data.genersName == val);
                                uploadSongController.curGener.value.text =
                                selectedData.genersName!;
                                uploadSongController.curGenerId.value =
                                    selectedData.genersId!.toString();
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search gener',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                            () {
                          if (uploadSongController
                              .languageModel.value.languageList ==
                              null ||
                              uploadSongController
                                  .languageModel.value.languageList!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No language available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                              Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Lyrics Language",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController
                                  .languageModel.value.languageList!
                                  .map((data) => data.languageTitle)
                                  .where((title) => title != null)
                                  .toList()
                                  .cast<String>(),
                              selectedItem: uploadSongController
                                  .curLang.value.text.isEmpty
                                  ? null
                                  : uploadSongController.curLang.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ?? "Lyrics Language",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .languageModel.value.languageList!
                                    .firstWhere(
                                        (data) => data.languageTitle == val);
                                uploadSongController.curLang.value.text =
                                selectedData.languageTitle!;
                                uploadSongController.curLangId.value =
                                    selectedData.languageId!.toString();
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search lyrics language',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                            () {
                          if (uploadSongController.advisory == null ||
                              uploadSongController.advisory!.isEmpty) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                Border.all(color: const Color(0xffd9d9d9)),
                              ),
                              height: 50,
                              child: Text(
                                "No parental advisory available",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                              Border.all(color: const Color(0xffd9d9d9)),
                            ),
                            height: 50,
                            child: DropdownSearch<String>(
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: "Parental advisory",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "poppinsRegular",
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                ),
                              ),
                              items: uploadSongController.advisory!
                                  .map((data) => data['name']!)
                                  .toList(),
                              selectedItem: uploadSongController
                                  .curAdvisory.value.text.isEmpty
                                  ? null
                                  : uploadSongController
                                  .curAdvisory.value.text,
                              dropdownBuilder: (context, selectedItem) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedItem ??
                                          "Select parental advisory",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              },
                              onChanged: (val) {
                                var selectedData = uploadSongController
                                    .advisory!
                                    .firstWhere((data) => data['name'] == val);
                                uploadSongController.curAdvisory.value.text =
                                selectedData['name']!;
                                uploadSongController.curAdvisoryId.value =
                                selectedData['value']!;
                              },
                              popupProps: PopupProps.dialog(
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    fillColor: const Color(0xfff5f5f5),
                                    hintText: 'Search parental advisory',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                            () => _customTextField(
                          labelTxt: "Label name",
                          hintTxt: "Enter label name",
                          controller: uploadSongController.labelName.value,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _customTextField(
                        readOnly: true,
                        suffixIcon: IconButton(
                            onPressed: () async {
                              await uploadSongController.openCalendar(
                                  context: context);
                            },
                            icon: Icon(Icons.calendar_month)),
                        labelTxt: 'Date of Production',
                        hintTxt: 'Select Date of Production',
                        controller: uploadSongController.date.value,
                        keyboardType: TextInputType.datetime,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ReadMoreText(
                        "Once ypu upload every detail above, click on submit release button and keep ypur mobile aside for 5-7 minutes, it takes few minutes to get your tracks details uploaded. Once your track gets uploaded, you will be redirected to the profile page.",
                        trimLines: 2,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '...Read more',
                        trimExpandedText: ' Show less',
                        style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "poppinsRegular"),
                        moreStyle: TextStyle(fontSize: 12, color: Colors.blue, fontFamily: "poppinsRegular"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(() =>    Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                            elevation: 5.0,
                            child: Ink(
                              decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  if (uploadSongController.curAlbumTitle.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'select album title',
                                        backgroundColor: Colors.indigo);
                                  } else if (uploadSongController.curTrack.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'select album track',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.curInstrument.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'select instrumental type',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.title.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter title',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.primaryArtist.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter primary artist',
                                        backgroundColor: Colors.indigo);
                                  } else if (uploadSongController.featuring.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter featuring',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.lyricist.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter lyricist',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.composition.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter composition',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.music.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter music',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.curProYear.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'select production year',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.isrc.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter ISRC code',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.curAdvisory.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Select advisory',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.curLang.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Select language',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.labelName.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter label name',
                                        backgroundColor: Colors.indigo);
                                  }else if (uploadSongController.date.value.text.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'Enter date',
                                        backgroundColor: Colors.indigo);
                                  }else {
                                    uploadSongController.uploadSongs();
                                  }
                                },
                                child: Container(
                                  width: 130,
                                  height: 45,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: uploadSongController.isLoading.value
                                        ? const SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                        : const Text(
                                      'Submit',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "poppinsRegular",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),)

                    ],
                  )),
                ]),
          ),
        ),
      ),
    );
  }

  Widget _customTextField({
    required String labelTxt,
    required String hintTxt,
    required TextEditingController controller,
    required TextInputType keyboardType,
    bool obscureText = false,
    IconButton? suffixIcon,
    bool readOnly = false,
  }) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xfff5f5f5),
        hintText: hintTxt,
        hintStyle: const TextStyle(
          fontSize: 12,
          fontFamily: "poppinsRegular",
          color: Colors.black,
        ),
        contentPadding: const EdgeInsets.fromLTRB(15.0, 10, 0, 10),
        labelText: labelTxt,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: "poppinsRegular",
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xffd9d9d9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xffd9d9d9)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      uploadSongController.clearFields();
    });
    super.dispose();
  }
}
