import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '/src/utils/helper/helper_controller.dart';
import '../../../../../common_widgets/buttons/primary_button.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Container(
      padding: const EdgeInsets.only(top: tFormHeight - 15, bottom: tFormHeight),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              style: TextStyle(color: Colors.white, fontSize: 15),
              validator: (value) {
                if(value!.isEmpty) return 'Por favor, preencha o nome';
                return null;
              },
              decoration: const InputDecoration(label: Text(tFullName, style: TextStyle(color: Colors.white70,fontSize: 20),), prefixIcon: Icon(LineAwesomeIcons.user, color: Colors.white)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              validator: Helper.validateEmail,
              style: TextStyle(color: Colors.white, fontSize: 15),
              decoration: const InputDecoration(label: Text(tEmail, style: TextStyle(color: Colors.white70,fontSize: 20),), prefixIcon: Icon(LineAwesomeIcons.envelope, color: Colors.white)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              style: TextStyle(color: Colors.white, fontSize: 15),
              controller: controller.phoneNo,
              validator: (value) {
                if(value!.isEmpty) return 'Por favor, preencha o número';
                return null;
              },
              decoration: const InputDecoration(label: Text(tPhoneNo, style: TextStyle(color: Colors.white70, fontSize: 20)), prefixIcon: Icon(LineAwesomeIcons.phone, color: Colors.white)),
            ),
            const SizedBox(height: tFormHeight - 20),
            Obx(
                  () => TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                controller: controller.password,
                validator: Helper.validatePassword,
                obscureText: controller.showPassword.value ? false : true,
                decoration: InputDecoration(
                  label: const Text(tPassword, style: TextStyle(color: Colors.white70,fontSize: 20)),
                  prefixIcon: const Icon(Icons.fingerprint, color: Colors.white),
                  suffixIcon: IconButton(
                    icon: controller.showPassword.value
                        ? const Icon(LineAwesomeIcons.eye, color: Colors.white,)
                        : const Icon(LineAwesomeIcons.eye_slash, color: Colors.white,),
                    onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                  ),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 10),
            Obx(
                  () => TPrimaryButton(
                isLoading: controller.isLoading.value ? true : false,
                text: tSignup.tr,
                onPressed: controller.isFacebookLoading.value || controller.isGoogleLoading.value
                    ? () {}
                    : controller.isLoading.value
                    ? () {}
                    : () => controller.createUser(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
