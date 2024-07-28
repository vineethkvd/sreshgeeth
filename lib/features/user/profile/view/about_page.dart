import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:sreshgeeth/features/user/profile/controller/company_info.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final CompanyInfoController _controller = Get.put(CompanyInfoController());

  @override
  void initState() {
    _controller.fetchAboutUs();
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
              "About Us",
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
          body: Obx(() {
            if (_controller.aboutUsModel.value.userAbout == null) {
              return _buildShimmerEffect();
            } else {
              return _buildContent();
            }
          }),
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
      child: Container(
        padding: EdgeInsets.all(5),
        child: HtmlWidget(
          _controller.aboutUsModel.value.userAbout  ?? '',
          textStyle: TextStyle(
            fontSize: 15.sp,
            color: Colors.blueGrey,
            fontFamily: "poppinsRegular",
          ),
        ),
      ),
    );
  }
}
