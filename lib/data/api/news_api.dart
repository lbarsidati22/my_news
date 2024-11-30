// import 'package:flutter/material.dart';
// import 'package:my_news/config/enum/category_type_news.dart';
// import 'package:my_news/config/extention/string.dart';
// import 'package:my_news/data/model/result_api.dart';
// import 'package:http/http.dart' as http;

// class NewsApi {
//   Future<ResultApi> getNews({
//     required CategoryTypeNews categoryTypeNews,
//   }) async {
//     try {
//       Uri uri = Uri.https(''.baseUrlWithTopHeadline);
//     var responce = await  http.get(uri,
//       headers: 
//       {
//         'country':'us',
//         'category':categoryTypeNews.value,
//         'apiKey':''.getApiKey,
//       }
//       );
//       if(responce.statusCode == 200){
//         return ResultApi(isDone: true, resultOrError: resultOrError)
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//       return ResultApi(isDone: false, resultOrError: 'some error i dont know');
//     }
//   }
// }
