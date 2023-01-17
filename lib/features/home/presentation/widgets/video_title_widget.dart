import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoTitleWidget extends StatelessWidget {
  final String avatar;
  const VideoTitleWidget({
    super.key,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Image.network(
              // "https://media.istockphoto.com/id/113553655/fr/photo/britannique-chat-%C3%A0-poils-ras-8-mois-sur-fond-blanc.jpg?s=170667a&w=0&k=20&c=i3LMB8_ZXnJn1CzK0eBacPeHIlP86xjqKZX2qfTchzU=",
              "https://media.istockphoto.com/id/113553655/fr/photo/britannique-chat-%C3%A0-poils-ras-8-mois-sur-fond-blanc.jpg?s=170667a&w=0&k=20&c=i3LMB8_ZXnJn1CzK0eBacPeHIlP86xjqKZX2qfTchzU=",
              fit: BoxFit.cover,
              height: 40.h,
              width: 40.h,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Cat Island | Beautiful Animals That Can't Be Touched by Humgary so they can eat more food come from usa, japane or vietnam, Humgary so they can eat more food come from usa",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Text(
                      "BBC Cat",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(width: 8.w),
                    Icon(
                      Icons.circle,
                      size: 4.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "9.5M views",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(width: 8.w),
                    Icon(
                      Icons.circle,
                      size: 4.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2 months ago",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.h),
                        Container(
                          height: 4,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.r),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'More Option',
                          style: theme.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        const Divider(height: 0),
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Save to watch later",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Save to playlist",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Download video",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Share",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Not interesteds",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        Row(
                          children: [
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Do not recomment channel",
                              style: theme.textTheme.bodyLarge,
                            )
                          ],
                        ),
                        SizedBox(height: 18.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            showModalBottomSheet<void>(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 10.h),
                                      Container(
                                        height: 4,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.r),
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Text(
                                        'Report',
                                        style:
                                            theme.textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      const Divider(height: 0),
                                      SizedBox(height: 20.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Sexsual content",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Violent content",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Hateful content",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Chiabuse contetnt",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Save screen content",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Save to watch later",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                      // SizedBox(height: 18.w),
                                      Row(
                                        children: [
                                          SizedBox(width: 16.w),
                                          Checkbox(
                                            value: false,
                                            onChanged: (bool? value) {},
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            "Later content",
                                            style: theme.textTheme.bodyLarge,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 16.w),
                              Icon(
                                Icons.account_circle,
                                size: 30.sp,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Report",
                                style: theme.textTheme.bodyLarge,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
