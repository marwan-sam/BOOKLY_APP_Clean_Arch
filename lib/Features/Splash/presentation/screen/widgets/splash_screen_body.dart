import 'package:bookly_app/Features/Home/presentation/screens/home_screen.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InitSlideAnimation();
    NavToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImg.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
            animation: slideAnimate,
            builder: (context, _) {
              return SlideTransition(
                position: slideAnimate,
                child: const Text(
                  "Read Free Books",
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ],
    );
  }

  void InitSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slideAnimate = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    // slideAnimate.addListener(() {
    //   setState(() {});
    // });
  }

  void NavToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeScreen(),
      //   transition: Transition.fade,
      //   duration: transtionToScreen,
      // );
      GoRouter.of(context).push(RouterApp.keyHomeRoute);
    });
  }
}
