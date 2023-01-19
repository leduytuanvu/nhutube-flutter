import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/configs/app_color.dart';
import '../../../../core/configs/app_svg.dart';
import '../../../../router/app_page.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "History",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AppPage.historyPage);
                      },
                      child: Text(
                        "View all",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: AppColor.buttonRadient3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              SizedBox(
                height: 190.w,
                // color: Colors.amber,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 170.w,
                      // color: Colors.red,
                      margin: EdgeInsets.only(
                        left: index == 0 ? 14.w : 0,
                        right: 14.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14.w),
                                child: Image.network(
                                  "https://media.istockphoto.com/id/1129342275/fr/photo/profitant-de-sa-musique-pr%C3%A9f%C3%A9r%C3%A9e.jpg?s=170667a&w=0&k=20&c=xuR6pL8yWiCK0XFyTKbpjDPk7RqMh6VL6yimY92I1A8=",
                                  height: 120.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 8.w,
                                right: 8.w,
                                child: Container(
                                  height: 20.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: Colors.black38,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "12.35",
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 6.w),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "International music and dance to play with some one",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Icon(Icons.more_vert, size: 20.sp),
                            ],
                          ),
                          SizedBox(height: 2.w),
                          Text(
                            "World of music",
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Divider(
                height: 6.w,
                indent: 14.w,
                endIndent: 14.w,
              ),
              SizedBox(height: 18.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppPage.yourVideoPage);
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 44.w,
                        width: 44.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                        ),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.pink.shade400,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Your videos",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.pink.shade400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Downloads",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Divider(
                height: 6.w,
                indent: 14.w,
                endIndent: 14.w,
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Text(
                      "Playlists",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Recently added",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColor.buttonRadient3,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Icon(
                      Icons.arrow_downward,
                      color: AppColor.buttonRadient3,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.pink.shade400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "New playlist",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.pink.shade400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Watch later",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.w),
                        Text(
                          "24 unwatch videos",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.pink.shade400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Video likes",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.w),
                        Text(
                          "260 videos like",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.pink.shade400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My favorite songs",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.w),
                        Text(
                          "1423 favorite songs",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
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
