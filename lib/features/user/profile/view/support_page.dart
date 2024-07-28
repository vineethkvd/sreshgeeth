import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../controller/company_info.dart';


class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final CompanyInfoController _controller = Get.put(CompanyInfoController());

  @override
  void initState() {
    _controller.fetchSupport();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe50829),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xffe50829),
            centerTitle: true,
            title: Text(
              "Support",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontFamily: "poppinsBold"),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Get.back(),
            ),
          ),
          body: Container(
            color: Colors.white,
            child: Obx(() {
              if (_controller.supportModel.value.support == null) {
                return _buildShimmerEffect();
              } else {
                return _buildContent();
              }
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerEffect() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(19, (index) => _buildShimmerItem()),
        ),
      ),
    );
  }

  Widget _buildShimmerItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 20.0,
        color: Colors.white,
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.supervised_user_circle,size: 25,   color: Colors.indigo,),
                    SizedBox(width: 10,),
                    Text("Support",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.indigo,
                          fontFamily: "poppinssemibold",
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                HtmlWidget(
                  _controller.supportModel.value.support ?? '',
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blueGrey,
                    fontFamily: "poppinsRegular",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.support_agent,size: 25,   color: Colors.indigo,),
                    SizedBox(width: 10,),
                    Text("Helpline",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.indigo,
                          fontFamily: "poppinssemibold",
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                HtmlWidget(
                  _controller.supportModel.value.helpline ?? '',
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blueGrey,
                    fontFamily: "poppinsRegular",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
