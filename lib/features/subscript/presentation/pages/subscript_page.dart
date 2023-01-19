import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nhutube/core/configs/app_color.dart';

import '../../../../core/configs/app_svg.dart';
import '../../../../router/app_page.dart';
import '../../../home/presentation/widgets/video_item_widget.dart';
import '../../../home/presentation/widgets/video_title_widget.dart';

class SubscriptPage extends StatelessWidget {
  const SubscriptPage({super.key});

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
          toolbarHeight: 56.h,
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
                    "Subscriptions",
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppPage.profilePage);
                    },
                    child: const Icon(Icons.account_circle),
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Row(
                  children: [
                    Text(
                      "Subscriptions channel (36)",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "View all",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColor.buttonRadient3,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.w),
              SizedBox(
                height: 100.w,
                // color: Colors.red,,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 14.w : 10.w,
                        right: index == 9 ? 14.w : 0,
                      ),
                      child: SizedBox(
                        width: 70.w,
                        // color: Colors.blue,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: Image.network(
                                "https://www.befunky.com/images/prismic/d5660d64-faac-42a9-81fd-137f392812a3_hair-color.jpg?auto=avif,webp&format=jpg&width=1920&height=1920&fit=bounds",
                                height: 70.w,
                                width: 70.w,
                              ),
                            ),
                            SizedBox(height: 8.w),
                            Text(
                              "BBC Earth",
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.w),
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
              SizedBox(height: 12.w),
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
