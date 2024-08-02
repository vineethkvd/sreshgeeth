import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sreshgeeth/features/artist/podcast/model/podcast_list/podcast_list_model.dart';
import 'package:sreshgeeth/features/artist/podcast/view/completed.dart';
import 'package:sreshgeeth/features/artist/podcast/view/upcoming.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/podcast_controller.dart';

class ArtistPodcastPage extends StatefulWidget {
  const ArtistPodcastPage({super.key});

  @override
  State<ArtistPodcastPage> createState() => _ArtistPodcastPageState();
}

class _ArtistPodcastPageState extends State<ArtistPodcastPage> {
  @override
  final ArtistPodcastController artistPodcastController =
      Get.put(ArtistPodcastController());
  @override
  void initState() {
    super.initState();
    artistPodcastController.fetchPodcastCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Podcast",
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
                        "Schedule Podcast",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppinsSemiBold",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _customTextField(
                        labelTxt: "Podcast title",
                        hintTxt: "Enter podcast title",
                        controller: artistPodcastController.podTitle.value,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: const Color(0xffd9d9d9)),
                          ),
                          height: 50,
                          child: DropdownSearch<String>(
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Category",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.only(left: 10),
                                border: InputBorder.none,
                              ),
                            ),
                            items: artistPodcastController
                                .artistPodcastCategoryModel
                                .value
                                .podcastCategoryList!
                                .map(
                                    (category) => category.podcastCategoryTitle)
                                .where((title) => title != null)
                                .toList()
                                .cast<String>(),
                            selectedItem: artistPodcastController
                                    .podCategory.value.text.isEmpty
                                ? null
                                : artistPodcastController
                                    .podCategory.value.text,
                            dropdownBuilder: (context, selectedItem) {
                              return Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    selectedItem ?? "Select category",
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
                              var selectedCategory = artistPodcastController
                                  .artistPodcastCategoryModel
                                  .value
                                  .podcastCategoryList!
                                  .firstWhere((category) =>
                                      category.podcastCategoryTitle == val);
                              artistPodcastController.podCategory.value.text =
                                  selectedCategory.podcastCategoryTitle!;
                              artistPodcastController.podCategoryId.value =
                                  selectedCategory.podcastCategoryId! as String;
                            },
                            popupProps: PopupProps.dialog(
                              showSearchBox: true,
                              searchFieldProps: TextFieldProps(
                                decoration: InputDecoration(
                                  fillColor: const Color(0xfff5f5f5),
                                  hintText: 'Search category',
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
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: const Color(0xffd9d9d9)),
                          ),
                          height: 50,
                          child: DropdownSearch<String>(
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Podcast Type",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.only(left: 8),
                                border: InputBorder.none,
                              ),
                            ),
                            items: artistPodcastController.podTypeList
                                .map((value) => value['name'].toString())
                                .toList(),
                            selectedItem: artistPodcastController
                                    .podType.value.text.isEmpty
                                ? null
                                : artistPodcastController.podType.value.text,
                            dropdownBuilder: (context, selectedItem) {
                              return Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    selectedItem ?? "Select podcast type",
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
                              var selectedType = artistPodcastController
                                  .podTypeList
                                  .firstWhere((type) => type['name'] == val);
                              artistPodcastController.podType.value.text =
                                  selectedType['name'].toString();
                              artistPodcastController.podTypeId.value =
                                  selectedType['id'].toString();
                            },
                            popupProps: PopupProps.dialog(
                              showSearchBox: true,
                              searchFieldProps: TextFieldProps(
                                decoration: InputDecoration(
                                  hintText: 'Search podcast type',
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
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _customTextField(
                        readOnly: true,
                        suffixIcon: IconButton(
                            onPressed: () async {
                              await artistPodcastController.openCalendar(
                                  context: context);
                            },
                            icon: Icon(Icons.calendar_month)),
                        labelTxt: "Schedule date",
                        hintTxt: 'Select date',
                        controller: artistPodcastController.podDate.value,
                        keyboardType: TextInputType.datetime,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _customTextField(
                        readOnly: true,
                        suffixIcon: IconButton(
                            onPressed: () async {
                              await artistPodcastController.openClock(
                                  context: context);
                            },
                            icon: const Icon(Icons.alarm)),
                        labelTxt: "Schedule Time",
                        hintTxt: 'Select time',
                        controller: artistPodcastController.podTime.value,
                        keyboardType: TextInputType.datetime,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.sp),
                        child: Text(
                          "Cover Image",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "poppinsRegular",
                            color: const Color(0xff222222),
                          ),
                        ),
                      ),
                    Obx(()=>  Center(
                      child: artistPodcastController.imagePath.value.isEmpty
                          ? Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () async {
                            showModalBottomSheet(
                                backgroundColor: Colors.white,
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 100.sp,
                                    width: Get.width.sp,
                                    // color: Colors.black26,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(
                                                  8.0),
                                              child: Container(
                                                decoration:
                                                BoxDecoration(
                                                  color:
                                                  Colors.blueGrey,
                                                  borderRadius:
                                                  const BorderRadius
                                                      .all(Radius
                                                      .circular(
                                                      10)),
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                    Colors.black26,
                                                    style: BorderStyle
                                                        .solid,
                                                  ),
                                                ),
                                                child: IconButton(
                                                    onPressed:
                                                        () async {
                                                      File? imageFile =
                                                      await artistPodcastController
                                                          .pickImage(
                                                          ImageSource
                                                              .camera);
                                                      if (imageFile !=
                                                          null) {
                                                        await artistPodcastController.cropimage(
                                                            source: imageFile!
                                                                .path
                                                                .toString(),
                                                            context:
                                                            context);
                                                      }
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .camera,
                                                      size: 30,
                                                      color:
                                                      Colors.white,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(
                                                  8.0),
                                              child: Container(
                                                decoration:
                                                BoxDecoration(
                                                  color: Colors.brown,
                                                  borderRadius:
                                                  const BorderRadius
                                                      .all(Radius
                                                      .circular(
                                                      10)),
                                                  border: Border.all(
                                                    width: 1,
                                                    color:
                                                    Colors.black26,
                                                    style: BorderStyle
                                                        .solid,
                                                  ),
                                                ),
                                                child: IconButton(
                                                    onPressed:
                                                        () async {
                                                      // First, pick the image
                                                      File? imageFile =
                                                      await artistPodcastController
                                                          .pickImage(
                                                          ImageSource
                                                              .gallery);

                                                      // Check if an image was picked
                                                      if (imageFile !=
                                                          null) {
                                                        // Perform the crop operation
                                                        await artistPodcastController
                                                            .cropimage(
                                                          source: imageFile
                                                              .path
                                                              .toString(),
                                                          context:
                                                          context,
                                                        );
                                                      }
                                                    },
                                                    icon: const Icon(
                                                        CupertinoIcons
                                                            .photo,
                                                        size: 30,
                                                        color: Colors
                                                            .white)),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          borderRadius: BorderRadius.circular(12.r),
                          splashColor: Colors.grey.withOpacity(0.5),
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width * 0.65,
                            height: 130.sp,
                            decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.upload,
                                    size: 30, color: Color(0xff222222)),
                                Text(
                                  "Upload podcast cover",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: "poppinsRegular",
                                    color: const Color(0xff222222),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          : Container(
                        width: Get.width * 0.65,
                        height: 130.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: const Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(12.r),
                          image: DecorationImage(
                            image: FileImage(File(
                                artistPodcastController
                                    .imagePath.value)),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Center(
                        child: Material(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(15.0),
                          elevation: 5.0,
                          child: InkWell(
                            onTap: () async {
                              if (artistPodcastController
                                  .formKey.value.currentState!
                                  .validate()) {
                                await artistPodcastController.schedulePodcast();
                              }

                              // Get.to(const ArtistUploadScreen(),
                              //     transition:
                              //     Transition.cupertino);
                            },
                            child: Container(
                              width: 100,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: "poppinsRegular",
                                  color:Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15.0),
                                elevation: 5.0,
                                child: Ink(
                                  decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.black12),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      Get.to(UpcomingPodcastPage(),
                                          transition: Transition.cupertino);
                                    },
                                    child: Container(
                                      height: 45,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: const Text(
                                          'Upcoming Podcast',
                                          style: TextStyle(
                                            fontSize: 12,
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
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15.0),
                                elevation: 5.0,
                                child: Ink(
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.black12),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      Get.to(const CompletedPodcastPage(),
                                          transition: Transition.cupertino);
                                    },
                                    child: Container(
                                      height: 45,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: const Text(
                                          'Completed Podcast',
                                          style: TextStyle(
                                            fontSize: 12,
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
                          )
                        ],
                      ),
                    ),
                  )
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
      artistPodcastController.clearFields();
    });
    super.dispose();
  }
}
