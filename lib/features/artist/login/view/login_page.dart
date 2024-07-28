import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:flutter/cupertino.dart';
import 'package:sreshgeeth/core/utils/shared/constants/assets_pathes.dart';

import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/login_controller.dart';

class ArtistLoginPage extends StatefulWidget {
  const ArtistLoginPage({super.key});

  @override
  State<ArtistLoginPage> createState() => _ArtistLoginPageState();
}

class _ArtistLoginPageState extends State<ArtistLoginPage> {
  final ArtistLoginController loginController =
      Get.put(ArtistLoginController());
  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loginController.clearFields();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            child: SingleChildScrollView(
                child: Obx(
              () => Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back,
                                color: AppColor.blackTextColor, size: 25),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Register",
                                style: TextStyle(
                                    color: AppColor.blackTextColor,
                                    fontFamily: "poppinsSemiBold",
                                    fontSize: 15.sp),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(Icons.arrow_circle_right),
                            ],
                          ),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: SizedBox(
                              height: 350,
                              width: 250,
                              child:
                                  SvgPicture.asset(AssetsPathes.artistLogin)),
                        ),
                        Center(
                          child: Text(
                            'Artist Login',
                            style: TextStyle(
                                fontSize: 25.sp,
                                color: AppColor.blackTextColor,
                                fontFamily: "poppinsSemiBold"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _customTextField(
                          labelTxt: "Mobile Number",
                          hintTxt: "Enter mobile number",
                          controller: loginController.phone,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        _customTextField(
                          labelTxt: "Password",
                          hintTxt: "Enter password",
                          controller: loginController.password,
                          keyboardType: TextInputType.text,
                          obscureText: loginController.passwordVisible.value,
                          suffixIcon: IconButton(
                              onPressed: () {
                                loginController.updateVisibility();
                              },
                              icon: Icon(loginController.passwordVisible.value
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
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
                                    if (loginController.phone.text.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: 'Please enter phone number',
                                          backgroundColor: Colors.red);
                                    } else if (loginController
                                            .phone.text.length !=
                                        10) {
                                      Fluttertoast.showToast(
                                          msg:
                                              'Phone number should be 10 digits',
                                          backgroundColor: Colors.red);
                                    } else if (loginController
                                        .password.text.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: 'Please enter password',
                                          backgroundColor: Colors.red);
                                    } else {
                                      loginController.loginArtist();
                                    }
                                  },
                                  child: Container(
                                    width: 130,
                                    height: 45,
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: loginController.isLoading.value
                                          ? const SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            )
                                          : const Text(
                                              'Login',
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
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
  }) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
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
}
