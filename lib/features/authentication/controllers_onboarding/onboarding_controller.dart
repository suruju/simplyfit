import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///VARIABLES
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.offAllNamed('/login');
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
