import 'package:http/http.dart' as http;
import 'package:untitled13/main3.dart';

class product_repository{

 Future<List<FahadJson>?> get_Products()async{

   var response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

    if(response.statusCode==200){

      return fahadJsonFromJson(response.body);
    }else{
      throw Exception("Something went wrong");
    }


 }


}