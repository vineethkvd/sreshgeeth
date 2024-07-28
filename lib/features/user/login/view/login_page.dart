import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:flutter/cupertino.dart';
import 'package:sreshgeeth/core/utils/shared/constants/assets_pathes.dart';
import 'package:sreshgeeth/features/artist/login/view/login_page.dart';

import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController loginController = Get.put(LoginController());
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            child: SingleChildScrollView(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Get.to(const ArtistLoginPage(),transition: Transition.cupertino);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Gospel",
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: 350,
                    width: 250,
                    child: Image(image: AssetImage(AssetsPathes.logo)),
                  ),
                ),
                Center(
                  child: Text(
                    'BE ONE OF US!',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: AppColor.blackTextColor,
                        fontFamily: "poppinsSemiBold"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login with mobile number',
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColor.blackTextColor,
                      fontFamily: "poppinsRegular"),
                ),
                SizedBox(
                  height: 10,
                ),
                _customTextField(
                  labelTxt: "Mobile Number",
                  hintTxt: "Enter mobile number",
                  controller: loginController.phone,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We will send you 6 digit code on the given mobile number',
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColor.blackTextColor,
                      fontFamily: "poppinsRegular"),
                ),
                SizedBox(
                  height: 30,
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
                            Fluttertoast.showToast(msg: 'Please enter phone number',backgroundColor: Colors.red);
                          } else if (loginController.phone.text.length != 10) {
                            Fluttertoast.showToast(msg: 'Phone number should be 10 digits',backgroundColor: Colors.red);
                          } else {
                           loginController.loginUser();
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
                              'Get Otp',
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
