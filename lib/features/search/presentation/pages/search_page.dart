import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.pink.shade50,
          toolbarHeight: 64.h,
          leadingWidth: 26.w,
          title: Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColor.buttonRadient3),
              color: Colors.pink.shade50,
            ),
            child: Row(
              children: [
                SizedBox(width: 8.w),
                Icon(
                  Icons.search,
                  color: AppColor.buttonRadient3,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 8.h),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 520.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10.h),
                              Center(
                                child: Container(
                                  height: 4,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.r),
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Center(
                                child: Text(
                                  'Search Filter',
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              const Divider(height: 0),
                              SizedBox(height: 20.w),
                              Row(
                                children: [
                                  SizedBox(width: 16.w),
                                  const Text("Soft by"),
                                  const Spacer(),
                                  const Text("Relevance"),
                                  SizedBox(width: 4.w),
                                  const Icon(Icons.arrow_drop_down),
                                  SizedBox(width: 16.w),
                                ],
                              ),
                              SizedBox(height: 20.w),
                              Row(
                                children: [
                                  SizedBox(width: 16.w),
                                  const Text("Type"),
                                  const Spacer(),
                                  const Text("Channel"),
                                  SizedBox(width: 4.w),
                                  const Icon(Icons.arrow_drop_down),
                                  SizedBox(width: 16.w),
                                ],
                              ),
                              SizedBox(height: 20.w),
                              Row(
                                children: [
                                  SizedBox(width: 16.w),
                                  const Text("Upload date"),
                                  const Spacer(),
                                  const Text("Anytime"),
                                  SizedBox(width: 4.w),
                                  const Icon(Icons.arrow_drop_down),
                                  SizedBox(width: 16.w),
                                ],
                              ),
                              SizedBox(height: 20.w),
                              Row(
                                children: [
                                  SizedBox(width: 16.w),
                                  const Text("Duration"),
                                  const Spacer(),
                                  const Text("5-20 minutes"),
                                  SizedBox(width: 4.w),
                                  const Icon(Icons.arrow_drop_down),
                                  SizedBox(width: 16.w),
                                ],
                              ),
                              SizedBox(height: 20.w),
                              Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: const Text("More feature"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.all(16.0.w).copyWith(top: 20.w),
                                child: Wrap(
                                  spacing: 8.w,
                                  runSpacing: 14.w,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "Live",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "4D",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "3D",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "HDR",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "Subtitle",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "HD",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 6.w),,
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        border: Border.all(
                                          color: AppColor.buttonRadient3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 6.w),
                                        child: Text(
                                          "Full HD",
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(
                                            color: AppColor.buttonRadient3,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.w),
                              const Divider(height: 0),
                              SizedBox(height: 18.w),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GradientButtonWidget(
                                        title: "Reset",
                                        function: () {},
                                        height: 50.h,
                                      ),
                                    ),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: GradientButtonWidget(
                                        title: "Apply",
                                        function: () {},
                                        height: 50.h,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.filter_alt,
                    color: AppColor.buttonRadient3,
                  ),
                ),
                SizedBox(width: 8.w),
              ],
            ),
          ),
          actions: [
            Container(
              height: 44.h,
              width: 44.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade50,
              ),
              child: const Icon(Icons.mic),
            ),
            SizedBox(width: 16.w),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Recent",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Clear all",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: AppColor.buttonRadient3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Snake ilands",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.close,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "International dance battel",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.close,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Best education platform",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.close,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Text(
                  "Suggest search",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 22.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Top hit music today",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Viral news to day",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  children: [
                    Text(
                      "Animal and plant videos",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
