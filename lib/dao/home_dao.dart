import 'dart:async';
import 'dart:convert';
import 'package:flutter_app/model/home_model.dart';
import 'package:http/http.dart' as http;
const HOME_URL = 'http://www.devio.org/io/flutter_app/json/home_page.json';
class HomeDao{
  static Future<HomeModel> fetch() async{
    final response = await http.get(HOME_URL);
    if(response.statusCode == 200){
        Utf8Decoder utf8Decoder = Utf8Decoder(); // fix 中文乱码
      var result = json.decode(utf8Decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(result);
    }else{
      throw Exception('请求首页接口失败');
    }
  }
}