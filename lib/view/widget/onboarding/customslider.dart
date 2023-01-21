import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/onboarding_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (val) {
            controller.onPageChanged(val);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Image.asset(
                    onBoardingList[i].image!,
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 60),
                  Text(onBoardingList[i].title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30)),
                  const SizedBox(height: 30),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ],
              )),
    );
  }
}
