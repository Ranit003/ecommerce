import'package:http/http.dart' as http;

import '../../const.dart';
//import 'package:my_grocery/const.dart';

class RemotePopularCategoryService{
  var client = http.Client();
  var remoteUrl ='$baseUrl/api/popular-categories';
   Future<dynamic> get() async{
     var response =await client.get(
       Uri.parse('$remoteUrl?populate=category,category.image&pagination[start]=0&pagination[limit]=4')
     );
     return response;
   }

}