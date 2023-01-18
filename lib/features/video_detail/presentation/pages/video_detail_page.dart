import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/widgets/custom_text_field_widget.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

import '../../../home/presentation/widgets/video_item_widget.dart';
import '../../../home/presentation/widgets/video_title_widget.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 260.h,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.w,
                  right: 8.w,
                  top: 14.w,
                  bottom: 10.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Fox Dives Head First in to Snow | Planet Earth 2 | BBC Earth",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Row(
                  children: [
                    Text(
                      "2.5M views",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(width: 8.w),
                    Icon(
                      Icons.circle,
                      size: 4.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "1 year ago",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.thumb_up,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "20k",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.thumb_down,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "879",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.message,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "Live chat",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.share,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "Share",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.download,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "Download",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.save,
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          "Save",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.w),
                child: const Divider(height: 0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.network(
                        "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
                        height: 44.w,
                        width: 44.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "BBC Earth",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.verified,
                              size: 16.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        SizedBox(height: 4.w),
                        Text(
                          "12.9M subscribes",
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                    const Spacer(),
                    GradientButtonWidget(title: "Subcribe", function: () {}),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.w),
                child: const Divider(height: 0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Comments 3.8K",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      (Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.network(
                        "https://avatars.mds.yandex.net/i?id=84dbd50839c3d640ebfc0de20994c30d-4473719-images-taas-consumers&n=27&h=480&w=480",
                        height: 38.w,
                        width: 38.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Expanded(
                      child: CustomTextFieldWidget(
                        hintText: "Add a comment",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.w),
              for (int i = 0; i < 10; i++) ...{
                const VideoItemWidget(
                  image:
                      "https://apastyle.apa.org/images/reference-cat_tcm11-268960_w1024_n.jpg",
                  time: "14:34",
                ),
                const VideoTitleWidget(avatar: "avatar"),
                SizedBox(height: 14.h),
              },
              SizedBox(height: 40.w),
            ],
          ),
        ),
      ),
    );
  }
}
