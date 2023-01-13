import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/custom_text_field_widget.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

class FillProfilePage extends StatelessWidget {
  const FillProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var list = [
      "Gender",
      "Male",
      "Female",
      "Other",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.2,
          title: Text(
            "Fill Your Profile",
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                SizedBox(
                  height: 120.w,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 150.sp,
                        color: AppColor.buttonRadient2,
                      ),
                      Positioned(
                        bottom: 9.5.w,
                        right: 9.5.w,
                        child: Container(
                          height: 23.w,
                          width: 23.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(
                            Icons.photo_camera,
                            size: 15.sp,
                            color: Colors.black45,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 46.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomTextFieldWidget(
                    hintText: "Full name",
                    icon: Icon(
                      Icons.person,
                      color: Colors.black12,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomTextFieldWidget(
                    hintText: "Nick name",
                    icon: Icon(
                      Icons.person,
                      color: Colors.black12,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomTextFieldWidget(
                    hintText: "Email",
                    icon: Icon(
                      Icons.email,
                      color: Colors.black12,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomTextFieldWidget(
                    hintText: "Phone number",
                    icon: Icon(
                      Icons.phone,
                      color: Colors.black12,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.w),
                //   child: const CustomTextFieldWidget(
                //     hintText: "Gender",
                //     icon: Icon(
                //       Icons.person,
                //       color: Colors.black12,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        Icon(
                          Icons.person,
                          color: Colors.grey.shade400,
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            value: list.first,
                            // hint: const Icon(Icons.person),
                            icon: Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: const Icon(Icons.arrow_downward),
                            ),
                            elevation: 16,
                            isExpanded: true,
                            style: theme.textTheme.bodyMedium,
                            underline: const SizedBox.shrink(),
                            onChanged: (String? value) {},
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Text(
                                    value,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 16.w),
                    Expanded(
                      child: GradientButtonWidget(
                        height: 50.h,
                        title: "Skip",
                        function: () {},
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: GradientButtonWidget(
                        height: 50.h,
                        title: "Continue",
                        function: () {
                          Navigator.of(context).pushNamed(
                            AppPage.createNewPinPage,
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 16.w),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
