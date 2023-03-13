
import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled13/main3.dart';

class dbHelper{

static Database? _database;

Future<Database?> get db async{
  if(_database!=null){
    return _database;
  }else{
      _database =await init_database();
  }
}
 Future<Database> init_database()async{

  Directory document_directory=await getApplicationDocumentsDirectory();
      var openDB=openDatabase(document_directory.path,version: 1,onCreate:_onCreate );
      return openDB;
 }

_onCreate(Database db,int version )async{

  await db .execute(
    '''
    CREATE TABLE product
    
    (
    id INTEGER PRIMARY KEY,
    tittle TEXT  , 
    )
    
    
    '''

  );

}


 Future insertProductData(FahadJson  todo)async{

 Database? databas_e=await db;

 return databas_e?.insert( "product", FahadJson().toJson());
 }

 Future<List<FahadJson>?>  getProductData()async{
   Database? databas_e=await db;

   var data=await databas_e!.query( "product",orderBy: "id");

  List<FahadJson> productModel=await data.map((e) => FahadJson.fromJson(e)).toList();
  return productModel;
 }




}











