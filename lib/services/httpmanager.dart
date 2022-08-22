import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart'as http;
import 'package:task1/models/userModel.dart';
// import 'getstorage.dart';

class HttpManager{
  static Future<Either<String,UserModel>>getSec()async{
    try{
      // var token = MyDataBase.getToken();
      var request = http.MultipartRequest('POST', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/loginuser'));

      request.fields.addAll({
        'email': 'user1@gmail.com',
        'pass': '123456789',
        'fire': '12'
      });

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
        var result=await response.stream.bytesToString();
        var fromattedresult=jsonDecode(result);
        if(fromattedresult['status']){
          return Right(UserModel.fromJson(fromattedresult));
        }else{
          return const Left('error1');
        }
      }
      else {
        print(response.reasonPhrase);
        return const Left('error2');
      }
    }catch(e){
      print(e.toString());
      return const Left('error3');
    }
  }
}