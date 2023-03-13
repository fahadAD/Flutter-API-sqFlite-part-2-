import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled13/bindings.dart';
import 'package:untitled13/main1.dart';
import 'package:untitled13/main3.dart';
import 'package:untitled13/main5.dart';

void main() async{
All_binds().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: HomeNavi( ),

     );
  }
}
