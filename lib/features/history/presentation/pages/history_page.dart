import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.grey,
          title: Text(
            "Notification",
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            const Icon(Icons.search),
            SizedBox(width: 12.w),
            const Icon(Icons.more_outlined),
            SizedBox(width: 18.w),
          ],
        ),
        backgroundColor: theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  height: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12.w),
                      const Icon(Icons.search),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            label: const Text("Search watch his story"),
                            labelStyle: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 13.sp,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                      ),
                      SizedBox(width: 12.w),
                    ],
                  ),
                ),
              ),
              for (int i = 0; i < 14; i++) ...{
                SizedBox(height: 20.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            "https://thumbs.dreamstime.com/b/portrait-surprised-funky-guy-want-listen-music-search-playlist-his-smartphone-find-sound-track-dislike-songs-grimace-wear-163878846.jpg",
                            fit: BoxFit.cover,
                            width: 150.w,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "International music and dances, concert the big issue in the world",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 8.w),
                              Row(
                                children: [
                                  Text(
                                    "World of music",
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  SizedBox(width: 6.w),
                                  Icon(
                                    Icons.circle,
                                    size: 4.w,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    "12.8M views",
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      fontSize: 11.sp,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        const Icon(
                          Icons.more_vert,
                        )
                      ],
                    ),
                  ),
                ),
              },
              SizedBox(height: 80.w),
            ],
          ),
        ),
      ),
    );
  }
}
