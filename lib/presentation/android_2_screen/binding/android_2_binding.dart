import '../controller/android_2_controller.dart';
import 'package:get/get.dart';

class Android2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Android2Controller());
  }
}
