import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/components/slided_splash_logo.dart';
import 'package:bookly_app/Features/splash/presentation/views/components/slided_splash_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late Animation<Offset> textSlidingAnimation;
  late AnimationController logoAnimationController;
  late Animation<Offset> logoSlidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimatedText();
    initAnimatedLogo();

    navigateToHomeView();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textAnimationController.dispose();
    logoAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidedSplashLogo(logoSlidedAnimation: logoSlidingAnimation),
        const SizedBox(
          height: 8,
        ),
        SlidedText(slidingAnimation: textSlidingAnimation)
      ],
    );
  }

  void initAnimatedLogo() {
    logoAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    logoSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, -3), end: Offset.zero)
            .animate(logoAnimationController);

    logoAnimationController.forward();
  }

  void initAnimatedText() {
    textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(textAnimationController);
    textAnimationController.forward();
  }
    void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeView(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 250));
    });
  }
}
