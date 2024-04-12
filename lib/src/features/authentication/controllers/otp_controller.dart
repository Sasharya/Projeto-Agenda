import 'package:get/get.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Homescreen.dart';
import '../../../repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeScreen()) : Get.back();
  }

}