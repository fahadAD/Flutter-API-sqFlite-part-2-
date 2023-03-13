
import 'package:get/get.dart';
import 'package:untitled13/controller.dart';

class All_binds extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => state_controller());

  }

}