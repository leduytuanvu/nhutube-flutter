import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhutube/features/bottom_bar/presentation/cubit/bottom_bar_cubit.dart';

class IconBottomWidget extends StatelessWidget {
  final int index;
  final String icon;
  final String lable;
  const IconBottomWidget({
    super.key,
    required this.index,
    required this.icon,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    final realSize = MediaQuery.of(context).size.width - 16.w;
    final sizeItem = (realSize - 10) / 5;
    return BlocBuilder<BottomBarCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<BottomBarCubit>().changeIndex(index);
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0.r),
            ),
            duration: const Duration(milliseconds: 300),
            width: sizeItem,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.0.h),
                SizedBox(
                  height: 18.0.h,
                  width: 18.0.w,
                  child: Center(
                    child: SvgPicture.asset(
                      icon,
                      color: state == index ? Colors.black87 : Colors.black26,
                    ),
                  ),
                ),
                SizedBox(height: 4.0.h),
                Text(
                  lable,
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    color: state == index ? Colors.black87 : Colors.black26,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
