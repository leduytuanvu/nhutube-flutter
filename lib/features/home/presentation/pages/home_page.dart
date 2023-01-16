import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nhutube/core/configs/app_color.dart';

import '../../../../core/configs/app_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<String> listCategory = [
      "Trending",
      "All",
      "For you",
      "Woman",
      "Man",
      "Kids",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        appBar: AppBar(
          // backgroundColor: Colors.grey,
          titleSpacing: 0,
          title: Row(
            children: [
              SizedBox(width: 14.w),
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
              const Icon(Icons.search),
              SizedBox(width: 14.w),
              const Icon(Icons.notifications),
              SizedBox(width: 14.w),
              const Icon(Icons.account_circle),
              SizedBox(width: 14.w),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              SizedBox(
                height: 34.h,
                // color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategory.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 14.w : 8.w,
                        right: index == listCategory.length - 1 ? 14.w : 0.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          // color: AppColor.buttonRadient3,
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
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.all(14.0.w),
                child: Stack(
                  children: [
                    Container(
                      height: 220.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://apastyle.apa.org/images/reference-cat_tcm11-268960_w1024_n.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.w,
                      right: 18.w,
                      child: Container(
                        height: 26.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: Colors.black54,
                        ),
                        child: Center(
                          child: Text(
                            "15:27",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  height: 80.h,
                  color: Colors.green,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://media.istockphoto.com/id/113553655/fr/photo/britannique-chat-%C3%A0-poils-ras-8-mois-sur-fond-blanc.jpg?s=170667a&w=0&k=20&c=i3LMB8_ZXnJn1CzK0eBacPeHIlP86xjqKZX2qfTchzU=",
                          fit: BoxFit.cover,
                          height: 50.h,
                          width: 50.h,
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Cat Island | Beautiful Animals That Can't Be Touched by Humgary so they can eat more food come from usa, japane or vietnam",
                            maxLines: 2,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
