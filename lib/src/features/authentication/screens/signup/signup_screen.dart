import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/src/common_widgets/form/social_footer.dart';
import '/src/constants/image_strings.dart';
import '/src/constants/text_strings.dart';
import '/src/features/authentication/screens/login/login_screen.dart';
import '/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import '../../../../common_widgets/form/form_divider_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(tPost61), fit: BoxFit.fill)),
            padding: const EdgeInsets.all(tDefaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                const FormHeaderWidget(
                  image: tWelcomeScreenImage, title: tSignUpTitle, subTitle: tSignUpSubTitle, imageHeight: 0.1, subTitleColor: Colors.white,
                  titleColor: Colors.white,),
                const SignUpFormWidget(),
                const TFormDividerWidget(),
                SocialFooter(text1: tAlreadyHaveAnAccount, text2: tLogin, onPressed: () => Get.off(() => const LoginScreen())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
