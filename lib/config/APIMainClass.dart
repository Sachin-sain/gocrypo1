

// ignore_for_file: non_constant_identifier_names


import 'package:http/http.dart' as http;

import 'APIClasses.dart';
import 'SharedPreferenceClass.dart';
String ?Token ;
getToken() async {
  Token = (await SharedPreferenceClass.GetSharedData('token')) as String?;
}


Future<http.Response> APIMainClass(
    String SubURL, Map<String, String> paramDic, String PostGet) async {

  //check the condition API post and get
  if (PostGet == "Get") {
    final uri = new Uri.https(APIClasses.BaseURL, SubURL, paramDic);
    print(uri);
    var response = await http.get(uri, headers: {"Accept": "application/json"});
    return response;
  }
  else {
    final uri = new Uri.https(APIClasses.BaseURL, SubURL);
    print("Post :"+uri.toString());
    var response = await http.post(uri, body: paramDic);
    return response;
  }
}
Future<http.Response> APIMainClassbanner(
    String SubURL, Map<String, String> paramDic, String PostGet) async {
  String? token = (await SharedPreferenceClass.GetSharedData('token')) as String?;

  //check the condition API post and get
  if (PostGet == "Get") {
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL, paramDic);
    print(uri);
    var response = await http.get(uri, headers: {"Accept": "application/json","Authorization": "Bearer $token"});
    print(response);
    return response;
  }
  else {
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL);
    print("Post :"+uri.toString());
    var response = await http.post(uri, body: paramDic,headers: {"Authorization": "Bearer $token"});
    return response;
  }
}
Future<http.Response> APIMainClassbinance(
    String SubURL, Map<String, String> paramDic, String PostGet) async {
  String? token = (await SharedPreferenceClass.GetSharedData('token')) as String?;

  //check the condition API post and get
  if (PostGet == "Get") {
    final uri = new Uri.https(APIClasses.NODELBM_BaseURL, SubURL, paramDic);
    // 
    //print(uri.toString() + ' === ' + token);
    print('token  $token');
    var response = await http.get(uri, headers: {"Accept": "application/json","Authorization": "Bearer $token"});
    print(response);
    return response;
  }
  else {
    final uri = new Uri.https(APIClasses.NODELBM_BaseURL, SubURL);
    print("Post :"+uri.toString());
    var response = await http.post(uri, body: paramDic,headers: {"Authorization": "Bearer $token"});
    return response;
  }
}
Future<http.Response> LBMAPIMainClass(
    String SubURL, Map<String, String> paramDic, String PostGet) async {
  String? token = (await SharedPreferenceClass.GetSharedData('token')) as String?;
  //check the condition API post and get
  if (PostGet == "Get") {
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL, paramDic,);
    print(uri);
    var response = await http.get(uri, headers: {"Authorization": "Bearer $token"});
    return response;
  }
  else if(PostGet == "Delete") {
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL);
    var response = await http.delete(uri,headers: {"Authorization": "Bearer $token"});
    print("Deleted fav :"+uri.toString());
    return response;
  }
  else if(PostGet == "Put"){
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL,paramDic);
    var response = await http.put(uri,headers: {"Authorization": "Bearer $token"});
    return response;
  }
  else {
    final uri = new Uri.https(APIClasses.LBM_BaseURL, SubURL);
    var response = await http.post(uri, body: paramDic,headers: {"Authorization": "Bearer $token"});
    print("Post Method :"+response.toString());
    return response;
  }
}

Future<http.Response> demoApi(
    String SubURL, Map<String, String> paramDic, String PostGet) async {
  //check the condition API post and get
  if (PostGet == "Get") {
    final uri = new Uri.https(APIClasses.NODELBM_BaseURL, SubURL, paramDic);
    print(uri);
    var response = await http.get(uri);
    print(response);
    return response;
  }
  else {
    final uri = new Uri.https(APIClasses.NODELBM_BaseURL, SubURL);
    print("Post :"+uri.toString());
    var response = await http.post(uri, body: paramDic);
    return response;
  }
}