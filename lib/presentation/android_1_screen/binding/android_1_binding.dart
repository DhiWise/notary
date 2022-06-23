import '../controller/android_1_controller.dart';
import 'package:get/get.dart';

class Android1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Android1Controller());
  }
}
