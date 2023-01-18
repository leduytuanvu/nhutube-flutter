import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/configs/app_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        appBar: AppBar(
          title: Text(
            "YOUR PROFILE",
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 15.sp,
            ),
          ),
          centerTitle: true,
          actions: [
            const Icon(Icons.more_vert_rounded),
            SizedBox(width: 10.w),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18.w),
              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.network(
                        "https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg",
                        height: 90.w,
                        width: 90.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.buttonRadient3,
                        ),
                        height: 26.w,
                        width: 26.w,
                        child: Padding(
                          padding: const EdgeInsets.all(.0),
                          child: Icon(
                            Icons.edit,
                            size: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Text(
                "Andrew Ainsley",
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6.w),
              Text(
                "leduytuanvu.work@gmail.com",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 22.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  height: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    border: Border.all(
                      color: AppColor.buttonRadient3,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 16.w),
                      Icon(
                        Icons.star,
                        color: AppColor.buttonRadient3,
                        size: 60.sp,
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Join premium",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColor.buttonRadient3,
                              ),
                            ),
                            SizedBox(height: 8.w),
                            Text(
                              "Join watching full hd videos, without retriction and without asds",
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Icon(Icons.arrow_forward_ios,
                          color: AppColor.buttonRadient3),
                      SizedBox(width: 16.w),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Your channel",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Turn on incognito",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Your account",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Time watch",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Security",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Theme",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Language",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Settings",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 30.sp),
                    SizedBox(width: 10.w),
                    Text(
                      "Help center",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30.sp,
                      color: AppColor.buttonRadient3,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Logout",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColor.buttonRadient3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.w),
            ],
          ),
        ),
      ),
    );
  }
}
