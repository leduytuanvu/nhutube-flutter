import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/features/home/presentation/widgets/video_item_widget.dart';
import 'package:nhutube/features/home/presentation/widgets/video_title_widget.dart';

import '../../../../core/configs/app_svg.dart';
import '../../../../router/app_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<String> listCategory = [
      "All",
      "Trending",
      "For you",
      "Woman",
      "Man",
      "Kids",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        appBar: AppBar(
          toolbarHeight: 116.h,
          // backgroundColor: Colors.grey,
          titleSpacing: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  SizedBox(width: 16.w),
                  SvgPicture.asset(
                    AppSvg.leadingHome,
                    color: AppColor.buttonRadient3,
                    height: 32.w,
                    width: 32.w,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    "nhutube",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppPage.searchPage);
                    },
                    child: const Icon(Icons.search),
                  ),
                  SizedBox(width: 14.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppPage.notificationPage);
                    },
                    child: const Icon(Icons.notifications),
                  ),
                  SizedBox(width: 14.w),
                  const Icon(Icons.account_circle),
                  SizedBox(width: 16.w),
                ],
              ),
              SizedBox(height: 14.h),
              SizedBox(
                height: 34.h,
                // color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategory.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 16.w : 8.w,
                        right: index == listCategory.length - 1 ? 16.w : 0.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: index == 0 ? AppColor.buttonRadient3 : null,
                          border: Border.all(
                            color: AppColor.buttonRadient3,
                            width: 1.w,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Text(
                              listCategory[index],
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: index == 0
                                    ? Colors.white
                                    : AppColor.buttonRadient3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // SizedBox(height: 14.h),
              for (int i = 0; i < 10; i++) ...{
                const VideoItemWidget(
                  image:
                      "https://apastyle.apa.org/images/reference-cat_tcm11-268960_w1024_n.jpg",
                  time: "14:34",
                ),
                const VideoTitleWidget(avatar: "avatar"),
                SizedBox(height: 14.h),
              },
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}
