import 'package:get/get.dart';
import 'package:news_letter/core/resources/manager_assets.dart';
import 'package:flutter/material.dart';
import 'package:news_letter/core/resources/manager_colors.dart';
import 'package:news_letter/core/resources/manager_fonts.dart';
import 'package:news_letter/core/resources/manager_sizes.dart';
import 'package:news_letter/core/resources/manager_strings.dart';
import 'package:news_letter/core/resources/manager_styles.dart';
import 'package:news_letter/core/widgets/main_button.dart';
import 'package:news_letter/features/on_boarding/presentation/controller/on_boarding_controller.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key}) : controller = Get.find<OnBoardingController>();
  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ManagerColors.onBoardingGradientStartColor,
              ManagerColors.onBoardingGradientEndColor,
            ],
          ),
        ),
        child: Stack(
          children: [
            Image.asset(
              height: ManagerHeight.h538,
              ManagerAssets.onBoardingImage,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: ManagerHeight.h421,
                padding: EdgeInsets.symmetric(
                  horizontal: ManagerWidth.w32,
                  vertical: ManagerHeight.h52,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    ManagerRadius.r32,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ManagerStrings.onBoardingTitle,
                      textAlign: TextAlign.center,
                      style: getBoldTextStyle(
                        fontSize: ManagerFontSize.s32,
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h16,
                    ),
                    Text(
                      ManagerStrings.onBoardingBody,
                      textAlign: TextAlign.center,
                      style: getRegularTextStyle(
                        fontSize: ManagerFontSize.s18,
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h24,
                    ),
                    MainButton(
                      onPressed: controller.explore,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            ManagerStrings.Explore,
                            style: getRegularTextStyle(
                              fontSize: ManagerFontSize.s20,
                              color: ManagerColors.white,
                            ),
                          ),
                          SizedBox(
                            width: ManagerWidth.w8,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: ManagerColors.white,
                          ),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        ManagerRadius.r128,
                      ),
                      color: ManagerColors.indigo,
                      padding: EdgeInsets.symmetric(
                        vertical: ManagerHeight.h16,
                        horizontal: ManagerWidth.w24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
