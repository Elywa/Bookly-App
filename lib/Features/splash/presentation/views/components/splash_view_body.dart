import 'package:bookly_app/Features/splash/presentation/views/components/slided_splash_logo.dart';
import 'package:bookly_app/Features/splash/presentation/views/components/slided_splash_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    logoAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(textAnimationController);

    logoSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, -3), end: Offset.zero)
            .animate(logoAnimationController);

    textAnimationController.forward();
    logoAnimationController.forward();
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
}
