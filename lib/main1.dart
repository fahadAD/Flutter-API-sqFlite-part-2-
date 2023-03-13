import 'dart:async';
import 'dart:ui';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled13/controller.dart';
import 'package:untitled13/main2.dart';
import 'package:untitled13/main3.dart';
import 'package:untitled13/main5.dart';
 class HomeNavi extends GetView<state_controller> {
   const HomeNavi({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),

         body: Obx((){
           if(controller.loder.value){
             return Center(child: CircularProgressIndicator(
               color: Colors.deepOrange,
             ));
           }else{

             return ListView.builder(
               primary: false,
               shrinkWrap: true,
               itemCount:   controller.All_ProductList.value.length,
               itemBuilder: (BuildContext context, int index) {

                  var data=controller.All_ProductList.value[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                     color: Colors.black,
                     elevation: 5,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${data.userId}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${data.id}",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${data.title}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${data.completed}",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                         ),

                       ],
                     ),
                 ),
                  );
               },

             );
           }


         }),


     );
   }
}
