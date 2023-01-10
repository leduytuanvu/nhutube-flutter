import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhutube/core/configs/app_color.dart';

class GradientButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  final double height;
  final double width;
  final double fontSize;
  final double radius;

  const GradientButtonWidget({
    super.key,
    required this.title,
    required this.function,
    this.height = 40,
    this.width = 100,
    this.radius = 100,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.secondary,
        elevation: 1,
        minimumSize: Size(width.w, height.h),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius.r),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColor.buttonRadient1,
              AppColor.buttonRadient2,
              AppColor.buttonRadient3,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius.r)),
        ),
        child: Container(
          constraints: BoxConstraints(minWidth: width.w, minHeight: height.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: fontSize.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
