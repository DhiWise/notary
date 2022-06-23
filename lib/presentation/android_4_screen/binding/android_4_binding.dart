import '../controller/android_4_controller.dart';
import 'package:get/get.dart';

class Android4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Android4Controller());
  }
}
