import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_svg.dart';
import 'package:nhutube/features/add/presentation/pages/add_page.dart';
import 'package:nhutube/features/bottom_bar/presentation/cubit/bottom_bar_cubit.dart';
import 'package:nhutube/features/home/presentation/pages/home_page.dart';
import 'package:nhutube/features/library/presentation/pages/library_page.dart';
import 'package:nhutube/features/short/presentation/pages/short_page.dart';
import 'package:nhutube/features/subscript/presentation/pages/subscript_page.dart';
import '../widgets/icon_bottom_widget.dart';

class BottomBarPage extends StatelessWidget {
  const BottomBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    var listScreen = [
      const HomePage(),
      const ShortPage(),
      const AddPage(),
      const SubscriptPage(),
      const LibraryPage(),
    ];
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            NotificationListener<UserScrollNotification>(
              onNotification: (scrollController) {
                if (scrollController.metrics.pixels ==
                    scrollController.metrics.maxScrollExtent) {
                } else {
                  log('${scrollController.metrics.pixels}');
                  log('${scrollController.metrics.maxScrollExtent}');
                }
                if (scrollController.direction == ScrollDirection.reverse) {
                  // controller.isVisible.value = false;
                }
                if (scrollController.direction == ScrollDirection.forward) {
                  // controller.isVisible.value = true;
                }
                return true;
              },
              child: BlocBuilder<BottomBarCubit, int>(
                builder: (context, state) {
                  return IndexedStack(
                    index: state,
                    children: listScreen,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(color: theme.backgroundColor),
                    height: 56.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconBottomWidget(
                          index: 0,
                          icon: AppSvg.home,
                          lable: 'Home',
                        ),
                        IconBottomWidget(
                          index: 1,
                          icon: AppSvg.movie,
                          lable: 'Short Video',
                        ),
                        IconBottomWidget(
                          index: 2,
                          icon: AppSvg.plus,
                          lable: 'Add New',
                        ),
                        IconBottomWidget(
                          index: 3,
                          icon: AppSvg.subscript,
                          lable: 'Sub Script',
                        ),
                        IconBottomWidget(
                          index: 4,
                          icon: AppSvg.library,
                          lable: 'Library',
                        ),
                      ],
                    ),
                  ),
                  // Obx(() {
                  //   return Get.find<ProfileController>()
                  //               .updateProfileState
                  //               .value ==
                  //           UpdateProfileState.loading
                  //       ? Positioned.fill(
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               color: Colors.black.withOpacity(0.6),
                  //             ),
                  //             height: double.infinity,
                  //             width: double.infinity,
                  //           ),
                  //         )
                  //       : const SizedBox.shrink();
                  // }),
                  // Obx(() {
                  //   return Get.find<ProfileController>().signOutState.value ==
                  //           SignOutState.loading
                  //       ? Positioned.fill(
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               // color: Colors.black.withOpacity(0.9),
                  //               color: Colors.black.withOpacity(0.6),
                  //             ),
                  //             height: double.infinity,
                  //             width: double.infinity,
                  //           ),
                  //         )
                  //       : const SizedBox.shrink();
                  // })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
