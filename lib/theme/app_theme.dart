import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhutube/core/configs/app_color.dart';

ThemeData lightTheme = ThemeData(
  backgroundColor: AppColor.lightPrimary,
  textTheme: TextTheme(
    bodySmall: GoogleFonts.montserrat(
      fontSize: 12.sp,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 14.sp,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16.sp,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 12.sp,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: 16.sp,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  backgroundColor: AppColor.darkPrimary,
  textTheme: TextTheme(
    bodySmall: GoogleFonts.montserrat(
      fontSize: 12.sp,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 14.sp,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16.sp,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 12.sp,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: 20.sp,
      color: Colors.white,
    ),
  ),
);
