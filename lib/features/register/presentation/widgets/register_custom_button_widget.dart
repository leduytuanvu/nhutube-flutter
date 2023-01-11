import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterCustomButtonWidget extends StatelessWidget {
  final Icon? icon;
  const RegisterCustomButtonWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.w,
      width: 60.w,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: Colors.black38),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(child: icon),
    );
  }
}
