

import 'package:flutter_getx_mvvm/data/network/network_api_services.dart';
import 'package:flutter_getx_mvvm/res/app_url/app_url.dart';

class LoginRepository{

  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async{
    final response = await _apiServices.postApi(data, AppUrl.loginUrl);
    return response;
  }
}