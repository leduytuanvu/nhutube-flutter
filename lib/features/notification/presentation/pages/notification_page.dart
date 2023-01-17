import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';

import '../widgets/notification_item_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
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
            bottom: TabBar(
              indicatorColor: AppColor.buttonRadient3,
              unselectedLabelColor: Colors.grey,
              labelColor: AppColor.buttonRadient3,
              labelStyle: theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              tabs: const <Widget>[
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Mentions",
                ),
              ],
            ),
          ),
          backgroundColor: theme.backgroundColor,
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    for (int i = 0; i < 14; i++) ...{
                      SizedBox(height: 24.w),
                      const NotificationItemWidget(),
                    },
                    SizedBox(height: 80.w),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    for (int i = 0; i < 14; i++) ...{
                      SizedBox(height: 24.w),
                      const NotificationItemWidget(),
                    },
                    SizedBox(height: 80.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
