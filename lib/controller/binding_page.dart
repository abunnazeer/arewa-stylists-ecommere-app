import 'package:arewa_stylist/controller/home_page_controller.dart';
import 'package:get/get.dart';

class BindingPage implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
