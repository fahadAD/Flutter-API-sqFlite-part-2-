import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled13/main3.dart';

import 'api_call.dart';


class state_controller extends GetxController{

var loder=false.obs;

var All_ProductList=RxList<FahadJson>().obs;

final product_repository _product_repository= product_repository();

@override
  void onInit() {
    get_Data();
    super.onInit();
  }

 void get_Data()async{

   loder.value=true;

var api_data=await _product_repository.get_Products();

if(api_data!=null){

 All_ProductList.value.addAll(api_data) ;
 loder.value=false;

}



 }

}