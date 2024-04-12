import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/src/constants/glassmorph.dart';
import '/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
import '../../../../utils/animations/fade_in_animation/animation_design.dart';
import '../../../../utils/animations/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../utils/animations/fade_in_animation/fade_in_animation_model.dart';
import '../login/login_screen.dart';
import 'package:testeagenda/src/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animationIn();

    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1C1C1C),
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                backgroundColor: Color(0xFF1B1D1E).withOpacity(0.6),
                toolbarHeight: 35,
                centerTitle: true,
                title: const Text(
                  'StarSystem',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
              ),
            ),
          ),
          preferredSize: Size(
            double.infinity,
            56.0,
          ),
        ),
        body: Stack(
          children: [
            TFadeInAnimation(
              isTwoWayAnimation: false,
              durationInMs: 1200,
              animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(tWallpaper), fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(tDefaultSpace),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          TGlassmorphText(text: tWelcomeTitle, fontSize: 30, textColor: Colors.white,),
                          SizedBox(height: 10,),
                          TGlassmorphText(text: tWelcomeSubTitle, fontSize: 20, textColor: Colors.white,)
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:Container(decoration: BoxDecoration(
                              color: Color(0xFF25252A).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2, color: Color(0xFF25252A)),
                            ),
                              child: OutlinedButton(
                                onPressed: () => Get.to(() => const LoginScreen()),
                                child: Text(tLogin.toUpperCase(),
                                  style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ),),
                          const SizedBox(width: 20.0),
                          Expanded(
                            child:Container(decoration: BoxDecoration(
                              color: Color(0xFF25252A).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2, color: Color(0xFF25252A)),
                            ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff333333).withOpacity(0.2),
                                ),
                                onPressed: () => Get.to(() => const SignupScreen()),
                                child: Text(tSignup.toUpperCase(),
                                  style: TextStyle(fontSize: 20),),
                              ),
                            ),
                          ),],
                      )
                    ],
                  ),
                ),
              ),
            ),],
        ),
      ),
    );
  }
}
