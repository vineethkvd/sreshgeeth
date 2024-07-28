import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sreshgeeth/core/utils/shared/constants/assets_pathes.dart';
import 'package:sreshgeeth/features/user/navbar/view/navbar_screen.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/login_controller.dart';

class OtpVerificationPage extends StatefulWidget {
  final String otp;
  final String id;
  const OtpVerificationPage({super.key, required this.otp, required this.id});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final LoginController loginController = Get.put(LoginController());
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          barrierColor: Colors.black26,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure?',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontFamily: "poppinsBold"),
            ),
            content: Text('Do you want to exit?',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontFamily: "poppinsRegular")),
            actions: <Widget>[
              Material(
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      loginController. clearFields();
                      Navigator.of(context).pop(false);
                    },
                    child: Container(
                      color: Colors.red,
                      height: 30,
                      width: 60,
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          'No',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "poppinsRegular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Container(
                      color: Colors.green,
                      height: 30,
                      width: 60,
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "poppinsRegular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            body: Container(
              padding: const EdgeInsets.all(10),
              height: Get.height,
              width: Get.width,
              color: AppColor.whiteColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(onPressed: () {
                        _onWillPop();
                      }, icon: Icon(Icons.arrow_back,size: 25,color: AppColor.blackTextColor,))
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                        height: 300,
                        width: Get.width,
                        child: SvgPicture.asset(AssetsPathes.otpImage)),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter OTP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppinsSemiBold",
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: Pinput(
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "poppinsSemiBold",
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f5f5),
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        controller: loginController.otp,
                        length: 6,
                        toolbarEnabled: false,
                        inputFormatters: const [],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15.0),
                          elevation: 5.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black12),
                            ),
                            child: InkWell(
                              onTap: () async {
                                if (loginController.otp.text.isEmpty) {
                                  Fluttertoast.showToast(
                                      msg: 'Please enter phone number',
                                      backgroundColor: Colors.red);
                                } else if (loginController.otp.text.length != 6) {
                                  Fluttertoast.showToast(
                                      msg: 'Otp should be 6 digits',
                                      backgroundColor: Colors.red);
                                } else {
                                  if (loginController.otp.text == widget.otp) {
                                    loginController. clearFields();
                                    CacheHelper.saveData(
                                        "userId", widget.id.toString());
                                    Get.offAll(const NavBar(),
                                        transition: Transition.cupertino);
                                    Fluttertoast.showToast(
                                        msg: 'Login success',
                                        backgroundColor: Colors.green);
                                  } else {
                                    Fluttertoast.showToast(
                                        msg: 'Please enter a valid otp',
                                        backgroundColor: Colors.red);
                                  }
                                }
                              },
                              child: Container(
                                width: 130,
                                height: 45,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
