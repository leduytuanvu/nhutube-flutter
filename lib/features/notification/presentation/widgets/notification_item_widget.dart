import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 16.w),
        ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu_fpPmbK-bebEeX036y7frmW06amtCkG1ew&usqp=CAU",
            height: 30.w,
            width: 30.w,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 4.w),
              Text(
                "2 hours ago",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        SizedBox(width: 10.w),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.network(
            "https://apastyle.apa.org/images/reference-cat_tcm11-268960_w1024_n.jpg",
            height: 66.w,
            width: 106.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.w),
        const Icon(Icons.more_vert),
        SizedBox(width: 16.w),
      ],
    );
  }
}
