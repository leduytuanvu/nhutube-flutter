import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          toolbarHeight: 64.h,
          leadingWidth: 26.w,
          title: Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.red,
            ),
            child: Row(
              children: [
                SizedBox(width: 8.w),
                const Icon(Icons.search),
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
                const Icon(Icons.close),
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
        body: Container(),
      ),
    );
  }
}
