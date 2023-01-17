import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoItemWidget extends StatelessWidget {
  final String image;
  final String time;
  const VideoItemWidget({
    super.key,
    required this.image,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Stack(
        children: [
          Container(
            height: 220.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(image),
                // "https://apastyle.apa.org/images/reference-cat_tcm11-268960_w1024_n.jpg"),
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
                  time,
                  // "15:27",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
