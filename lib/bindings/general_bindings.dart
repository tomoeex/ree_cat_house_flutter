
import 'package:get/get.dart';
import 'package:ree_cat_house/util/helpers/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}